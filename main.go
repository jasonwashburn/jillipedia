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
	const indexHTML = `<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Search</title>
    <script src="https://unpkg.com/htmx.org@2.0.4"></script>
    <style>
        * { box-sizing: border-box; }
        
        body { 
            font-family: system-ui, -apple-system, sans-serif;
            margin: 0;
            padding: 1rem;
            background: #f5f5f5;
            line-height: 1.5;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        .search-container { 
            position: sticky;
            top: 0;
            background: #f5f5f5;
            padding: 1rem 0;
            margin-bottom: 1rem;
            z-index: 100;
        }

        input[type="search"] { 
            width: 100%;
            padding: 0.8rem;
            font-size: 1.1rem;
            border: 2px solid #ddd;
            border-radius: 8px;
            -webkit-appearance: none;
            appearance: none;
        }

        input[type="search"]:focus {
            outline: none;
            border-color: #007bff;
        }

        .video-item { 
            background: white;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 12px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s;
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .video-item:active {
            transform: scale(0.98);
        }

        .video-item img {
            width: 120px;
            object-fit: contain;
            border-radius: 6px;
            flex-shrink: 0;
        }

        .video-item .content {
            flex: 1;
            min-width: 0;  /* Prevents flex item from overflowing */
        }

        .video-item h3 { 
            margin: 0 0 0.5rem 0;
            font-size: 1.2rem;
            color: #333;
        }

        .video-item p { 
            margin: 0 0 0.5rem 0;
            color: #666;
            font-size: 0.95rem;
        }

        .video-item .episode-info {
            color: #888;
            font-size: 0.9rem;
            margin-top: 0.5rem;
        }

        @media (max-width: 600px) {
            body {
                padding: 0.5rem;
            }
            
            .video-item {
                padding: 0.8rem;
            }

            .video-item img {
                width: 100px;
                object-fit: contain;
            }

            .video-item h3 {
                font-size: 1.1rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="search-container">
            <input type="search" 
                   name="search" 
                   placeholder="Search videos..."
                   hx-get="/videos" 
                   hx-trigger="input changed delay:500ms, load" 
                   hx-target="#results">
        </div>
        <div id="results"></div>
    </div>
</body>
</html>`

	w.Header().Set("Content-Type", "text/html")
	fmt.Fprint(w, indexHTML)
}

func init() {
	router := NewRouter()
	router.Handle("/", indexHandler)
	router.Handle("/videos", searchVideos)

	spinhttp.Handle(router.ServeHTTP)
}

func main() {}
