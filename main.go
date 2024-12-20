package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"
	"strings"

	spinhttp "github.com/fermyon/spin/sdk/go/v2/http"
	"github.com/fermyon/spin/sdk/go/v2/sqlite"
)

type Video struct {
	Season      int           `json:"season"`
	Episode     int           `json:"epidsode"`
	Id          string        `json:"id"`
	Title       string        `json:"title"`
	Description string        `json:"description"`
	Url         string        `json:"url"`
	Thumbnail   ThumbnailInfo `json:"thumbnail"`
	ClickCount  int           `json:"click_count"`
}

type ThumbnailInfo struct {
	Url    string `json:"url"`
	Width  int    `json:"width"`
	Height int    `json:"height"`
}

type Router struct {
	routes map[string]http.HandlerFunc
}

func NewRouter() *Router {
	return &Router{
		routes: make(map[string]http.HandlerFunc),
	}
}

func (r *Router) Handle(path string, handler http.HandlerFunc) {
	r.routes[path] = handler
}

func (r *Router) ServeHTTP(w http.ResponseWriter, req *http.Request) {
	if handler, ok := r.routes[req.URL.Path]; ok {
		handler(w, req)
		return
	}
	http.Error(w, "Not found", http.StatusNotFound)
}

func normalizeSearchText(text string) string {
	// Convert to lowercase
	text = strings.ToLower(text)
	// Remove apostrophes and special characters
	text = strings.Map(func(r rune) rune {
		if r == '\'' || r == '"' || r == '.' || r == ',' {
			return -1 // Remove the character
		}
		return r
	}, text)
	// Replace multiple spaces with single space and trim
	text = strings.Join(strings.Fields(text), " ")
	return text
}

func searchVideos(w http.ResponseWriter, r *http.Request) {
	if r.Header.Get("HX-Request") != "" {
		w.Header().Set("Content-Type", "text/html")
	} else {
		w.Header().Set("Content-Type", "application/json")
	}
	query := r.URL.Query().Get("search")
	if query != "" {
		query = normalizeSearchText(query)
	}
	db := sqlite.Open("default")
	defer db.Close()

	sqlQuery := `
		SELECT v.id, v.title, v.description, v.url, v.season, v.episode,
			   t.url, t.width, t.height,
			   COUNT(DISTINCT c.id) as click_count
		FROM videos v
		LEFT JOIN thumbnails t ON v.id = t.video_id
		LEFT JOIN clicks c ON v.id = c.video_id AND c.clicked_at > datetime('now', '-30 days')
		GROUP BY v.id`

	var rows *sql.Rows
	var err error
	if query != "" {
		searchPattern := "%" + strings.Join(strings.Fields(query), "%") + "%"
		sqlQuery += ` HAVING LOWER(REPLACE(REPLACE(v.title, "'", ""), '"', "")) LIKE ?
					 ORDER BY click_count DESC
					 LIMIT 25`
		rows, err = db.Query(sqlQuery, searchPattern)
	} else {
		sqlQuery += ` ORDER BY click_count DESC LIMIT 25`
		rows, err = db.Query(sqlQuery)
	}
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	var videos []*Video
	for rows.Next() {
		var video Video
		if err := rows.Scan(
			&video.Id,
			&video.Title,
			&video.Description,
			&video.Url,
			&video.Season,
			&video.Episode,
			&video.Thumbnail.Url,
			&video.Thumbnail.Width,
			&video.Thumbnail.Height,
			&video.ClickCount,
		); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		videos = append(videos, &video)
	}

	if r.Header.Get("HX-Request") != "" {
		var html string
		for _, video := range videos {
			html += fmt.Sprintf(`
				<a href="%s" style="text-decoration: none; color: inherit;" 
				   onclick="fetch('/track-click?id=%s', {method: 'POST'}); return true;">
					<div class="video-item" id="video-%s">
						<img src="%s" width="%d" height="%d">
						<div class="content">
							<h3>%s</h3>
							<p>%s</p>
							<p class="episode-info">Season %d, Episode %d</p>
							<p class="click-count">%d views in the last 30 days</p>
						</div>
					</div>
				</a>`,
				video.Url,
				video.Id,
				video.Id,
				video.Thumbnail.Url,
				video.Thumbnail.Width,
				video.Thumbnail.Height,
				video.Title,
				video.Description,
				video.Season,
				video.Episode,
				video.ClickCount)
		}
		fmt.Fprint(w, html)
		return
	}

	json.NewEncoder(w).Encode(videos)
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	http.Redirect(w, r, "/static/index.html", http.StatusFound)
}

func trackClick(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		http.Error(w, "Method not allowed", http.StatusMethodNotAllowed)
		return
	}

	videoId := r.URL.Query().Get("id")
	if videoId == "" {
		http.Error(w, "Video ID required", http.StatusBadRequest)
		return
	}

	db := sqlite.Open("default")
	defer db.Close()

	_, err := db.Exec("INSERT INTO clicks (video_id) VALUES (?)", videoId)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusOK)
}

func init() {
	router := NewRouter()
	router.Handle("/", indexHandler)
	router.Handle("/videos", searchVideos)
	router.Handle("/track-click", trackClick)

	spinhttp.Handle(router.ServeHTTP)
}

func main() {}
