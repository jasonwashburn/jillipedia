-- Add missing index on thumbnails.video_id for JOIN performance
-- Every search query joins thumbnails on video_id, so this index is essential
CREATE INDEX IF NOT EXISTS idx_thumbnails_video_id ON thumbnails(video_id);
