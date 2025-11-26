-- Remove clicks older than 30 days
-- Since only the last 30 days are used for ranking, older data is unnecessary
DELETE FROM clicks WHERE clicked_at < datetime('now', '-30 days');
