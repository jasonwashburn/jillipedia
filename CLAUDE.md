# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jillipedia is a Mickey Mouse Clubhouse episode search application built as a pure static website. It provides a fast, interactive search interface for finding and watching 123 episodes, with client-side click tracking for popularity-based results.

## Technology Stack

- **Runtime**: Static HTML/CSS/JavaScript (no server required)
- **Backend**: None - pure client-side application
- **Data Storage**: JSON file (`static/videos.json`) with 123 episodes
- **Click Tracking**: Browser localStorage API
- **Frontend**: Vanilla JavaScript (zero dependencies)
- **Styling**: Tailwind CSS (pre-compiled)

## Common Commands

### Development
```bash
# Serve the static site locally for testing
cd static
python3 -m http.server 8000
# Then open http://localhost:8000 in your browser

# Or use any other static file server:
npx serve static
```

### Deployment
```bash
# Deploy the static/ folder to any static hosting:
# - GitHub Pages: Push static/ contents to gh-pages branch
# - Netlify: Drag and drop the static/ folder
# - Vercel: Deploy the static/ directory
# - Any CDN or web server
```

### CSS Development (if needed)
```bash
# Rebuild Tailwind CSS (only if modifying styles)
npx tailwindcss -i src/styles/input.css -o static/output.css

# Watch mode for CSS development
npx tailwindcss -i src/styles/input.css -o static/output.css --watch
```

## Architecture

### Data Flow
1. Browser loads `index.html`
2. `app.js` fetches `videos.json` on page load
3. Videos are filtered and sorted client-side using vanilla JavaScript
4. Results are rendered using template literals
5. Clicks are tracked in browser localStorage

### Key Components

**Videos Data** (`static/videos.json`)
- Contains all 123 Mickey Mouse Clubhouse episodes
- Each video has: id, season, episode, title, description, url, thumbnail
- Loaded once on page load (~25KB raw, ~8KB gzipped)

**Search Functionality** (`static/app.js`)
- `normalizeSearchText(text)` - Removes apostrophes, quotes, periods, commas, collapses spaces
- `searchVideos(query)` - Filters videos by normalized title match
- Returns top 25 results sorted by click count
- Debounced by 300ms for smooth typing experience

**Click Tracking** (`static/app.js`)
- `trackClick(videoId, videoTitle)` - Increments click count in localStorage
- `getClickCount(videoId)` - Retrieves click count from localStorage
- Key format: `jillipedia_click_${videoId}`
- Per-device tracking (not global)

**Rendering** (`static/app.js`)
- `renderVideos(videos)` - Generates HTML from video array using template literals
- Creates card-based layout with thumbnails, titles, descriptions
- All styling uses Tailwind CSS classes
- Handles empty state gracefully

### Search Normalization
The search system normalizes both query and video titles:
- Converts to lowercase
- Removes apostrophes, quotes, periods, commas
- Collapses multiple spaces
This ensures "Mickey's" matches "Mickeys" and "mickey's"

### Progressive Web App (PWA) Features
The site includes PWA manifest and icons for mobile installation:
- Add to home screen support (iOS and Android)
- Custom app icons (180x180, 192x192, 512x512)
- Standalone display mode
- Mobile-optimized UI

## File Structure

```
static/
├── index.html           # Main HTML page
├── app.js              # Client-side JavaScript (vanilla JS, no dependencies)
├── videos.json         # All 123 episodes as JSON (~25KB)
├── output.css          # Compiled Tailwind CSS
├── site.webmanifest    # PWA manifest
├── favicon-*.png       # Favicon files
├── apple-touch-icon.png # iOS home screen icon
├── android-chrome-*.png # Android home screen icons
└── reload_icon.svg     # Clear search button icon

Legacy files (can be removed):
├── main.go             # Old Go/WASM backend
├── main.wasm           # Old compiled WASM binary
├── spin.toml           # Old Spin configuration
└── migrations/         # Old SQL migration files

src/
└── styles/
    └── input.css       # Tailwind CSS source (for rebuilding CSS if needed)
```

## Data Management

### Adding New Episodes
To add new episodes, edit `static/videos.json`:

```json
{
  "id": "YouTube_Video_ID",
  "season": 1,
  "episode": 1,
  "title": "Episode Title",
  "description": "Episode description",
  "url": "https://www.youtube.com/watch?v=YouTube_Video_ID",
  "thumbnail": {
    "url": "https://i.ytimg.com/vi/YouTube_Video_ID/default.jpg",
    "width": 120,
    "height": 90
  }
}
```

The app will automatically pick up the changes on next page load.

## Browser Compatibility

Works in all modern browsers:
- Chrome/Edge (2020+)
- Firefox (2020+)
- Safari (2020+)
- Mobile browsers (iOS Safari, Chrome Android)

Uses standard web APIs:
- `fetch()` for loading JSON
- `localStorage` for click tracking
- Template literals for HTML rendering
- Array methods (`filter`, `sort`, `slice`, `map`)

## Benefits of This Architecture

✅ **Zero infrastructure costs** - free static hosting everywhere
✅ **No database** - all data in JSON
✅ **Instant load times** - everything client-side
✅ **Offline capable** - could add service worker later
✅ **Simple deployment** - just HTML/CSS/JS files
✅ **No build tools required** - CSS already compiled
✅ **Mobile-first** - PWA features for home screen install

## Trade-offs

⚠️ **Click tracking is per-device** - localStorage is local to browser
⚠️ **No analytics** - could add Google Analytics if desired
⚠️ **Search is client-side** - but with 123 videos this is instant
