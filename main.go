package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"

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

func searchVideos(w http.ResponseWriter, r *http.Request) {
	if r.Header.Get("HX-Request") != "" {
		w.Header().Set("Content-Type", "text/html")
	} else {
		w.Header().Set("Content-Type", "application/json")
	}
	query := r.URL.Query().Get("search")
	db := sqlite.Open("default")
	defer db.Close()

	sqlQuery := `
		SELECT v.id, v.title, v.description, v.url, v.season, v.episode,
			   t.url, t.width, t.height 
		FROM videos v
		LEFT JOIN thumbnails t ON v.id = t.video_id`

	var rows *sql.Rows
	var err error
	if query != "" {
		sqlQuery += " WHERE v.title LIKE ?"
		rows, err = db.Query(sqlQuery, "%"+query+"%")
	} else {
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
				<a href="%s" style="text-decoration: none; color: inherit;">
					<div class="video-item" id="video-%s">
						<img src="%s" width="%d" height="%d">
						<div class="content">
							<h3>%s</h3>
							<p>%s</p>
							<p class="episode-info">Season %d, Episode %d</p>
						</div>
					</div>
				</a>`,
				video.Url,
				video.Id,
				video.Thumbnail.Url,
				video.Thumbnail.Width,
				video.Thumbnail.Height,
				video.Title,
				video.Description,
				video.Season,
				video.Episode)
		}
		fmt.Fprint(w, html)
		return
	}

	json.NewEncoder(w).Encode(videos)
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	http.Redirect(w, r, "/static/index.html", http.StatusFound)
}

func init() {
	router := NewRouter()
	router.Handle("/", indexHandler)
	router.Handle("/videos", searchVideos)

	spinhttp.Handle(router.ServeHTTP)
}

func main() {}
