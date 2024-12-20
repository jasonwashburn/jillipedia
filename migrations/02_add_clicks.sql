CREATE TABLE clicks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    video_id TEXT NOT NULL,
    clicked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(video_id) REFERENCES videos(id)
);

CREATE INDEX idx_clicks_video_id ON clicks(video_id);
CREATE INDEX idx_clicks_clicked_at ON clicks(clicked_at); 