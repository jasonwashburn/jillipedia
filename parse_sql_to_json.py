#!/usr/bin/env python3
"""Parse SQL migration file and convert to JSON for static site."""

import json
import re
from pathlib import Path

def parse_sql_to_json(sql_file_path, output_json_path):
    """Parse SQL INSERT statements and create JSON file."""

    with open(sql_file_path, 'r') as f:
        content = f.read()

    # Extract video INSERT statements
    video_pattern = r"INSERT INTO videos \(id, season, episode, title, description, url\) VALUES\s*\('([^']+)',\s*(\d+),\s*(\d+),\s*'([^']+(?:''[^']+)*)',\s*'([^']+(?:''[^']+)*)',\s*'([^']+)'\);"

    # Extract thumbnail INSERT statements
    thumbnail_pattern = r"INSERT INTO thumbnails \(video_id, url, width, height\) VALUES\s*\('([^']+)',\s*'([^']+)',\s*(\d+),\s*(\d+)\);"

    # Parse videos
    videos_dict = {}
    for match in re.finditer(video_pattern, content):
        video_id = match.group(1)
        season = int(match.group(2))
        episode = int(match.group(3))
        title = match.group(4).replace("''", "'")  # SQL escapes single quotes as ''
        description = match.group(5).replace("''", "'")
        url = match.group(6)

        videos_dict[video_id] = {
            "id": video_id,
            "season": season,
            "episode": episode,
            "title": title,
            "description": description,
            "url": url
        }

    # Parse thumbnails and add to videos
    for match in re.finditer(thumbnail_pattern, content):
        video_id = match.group(1)
        thumbnail_url = match.group(2)
        width = int(match.group(3))
        height = int(match.group(4))

        if video_id in videos_dict:
            videos_dict[video_id]["thumbnail"] = {
                "url": thumbnail_url,
                "width": width,
                "height": height
            }

    # Convert dict to list
    videos_list = list(videos_dict.values())

    # Sort by season and episode
    videos_list.sort(key=lambda v: (v["season"], v["episode"]))

    # Write JSON file
    with open(output_json_path, 'w') as f:
        json.dump(videos_list, f, indent=2)

    print(f"Parsed {len(videos_list)} videos")
    print(f"Written to {output_json_path}")

if __name__ == "__main__":
    sql_file = Path("migrations/01_initial_setup_and_episodes.sql")
    json_file = Path("static/videos.json")

    parse_sql_to_json(sql_file, json_file)
