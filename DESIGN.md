# DESIGN.md

## Overview
Jillipedia is a static web application that helps users find and watch Mickey Mouse Clubhouse episodes quickly. It provides a search functionality to filter episodes based on user queries and displays the results in a user-friendly, mobile-optimized interface. The application is built using pure vanilla JavaScript with zero runtime dependencies.

## Architecture

### Static Site Benefits
- **No backend required** - All functionality runs in the browser
- **Zero infrastructure costs** - Can be hosted on any static file server
- **Instant load times** - No API calls for search (data loaded once)
- **Offline capable** - Could add service worker for full offline support
- **Mobile-first** - Progressive Web App (PWA) ready

### Technology Stack
- **Frontend**: Vanilla JavaScript (ES6+)
- **Styling**: Tailwind CSS (pre-compiled)
- **Data Storage**: JSON file (static/videos.json)
- **Click Tracking**: Browser localStorage API
- **Hosting**: Any static file server (GitHub Pages, Netlify, Vercel, etc.)

## Components

### Main Components

1. **Data Layer** (`static/videos.json`)
   - Contains all 123 Mickey Mouse Clubhouse episodes
   - Each episode includes: id, season, episode, title, description, url, thumbnail
   - Loaded once on page initialization
   - Total size: ~25KB raw, ~8KB gzipped

2. **Application Logic** (`static/app.js`)
   - **Search Engine**
     - `normalizeSearchText(text)` - Text normalization for fuzzy matching
     - `searchVideos(query)` - Filter and sort videos
     - Debounced input handling (300ms)
   - **Click Tracking**
     - `trackClick(videoId, videoTitle)` - Record clicks in localStorage
     - `getClickCount(videoId)` - Retrieve click counts
     - Per-device tracking using localStorage
   - **Rendering**
     - `renderVideos(videos)` - Generate HTML using template literals
     - Dynamic card layout with thumbnails and metadata
     - Dark mode support via Tailwind CSS classes

3. **User Interface** (`static/index.html`)
   - Search input with autocomplete disabled
   - Clear/reload button
   - Results container with dynamic content
   - Sticky header for mobile scrolling
   - Dark mode support
   - PWA manifest and icons

### Data Flow

```
User loads page
    ↓
index.html loads
    ↓
app.js initializes
    ↓
Fetch videos.json (one-time)
    ↓
Display all videos (sorted by click count)
    ↓
User types search query
    ↓
Debounce input (300ms)
    ↓
Filter videos client-side
    ↓
Sort by click count
    ↓
Render top 25 results
    ↓
User clicks video
    ↓
Track click in localStorage
    ↓
Navigate to YouTube (opens in app on mobile)
```

## Data Schema

### Video Object
```json
{
  "id": "efWB4qNjiVI",           // YouTube video ID
  "season": 4,                    // Season number
  "episode": 1,                   // Episode number
  "title": "Mickey's Art Show",   // Episode title
  "description": "Mickey's putting on an arts and crafts show...",
  "url": "https://www.youtube.com/watch?v=efWB4qNjiVI",
  "thumbnail": {
    "url": "https://i.ytimg.com/vi/efWB4qNjiVI/default.jpg",
    "width": 120,
    "height": 90
  }
}
```

### localStorage Schema
Click counts are stored per-device using the browser's localStorage API:

```
Key: jillipedia_click_${videoId}
Value: integer (click count)

Example:
jillipedia_click_efWB4qNjiVI = "5"
```

## Search Functionality

### Text Normalization
Both search queries and video titles are normalized for consistent matching:

```javascript
function normalizeSearchText(text) {
  return text
    .toLowerCase()              // "Mickey's" → "mickey's"
    .replace(/['".]/g, '')      // "mickey's" → "mickeys"
    .replace(/,/g, '')          // Remove commas
    .replace(/\s+/g, ' ')       // Collapse spaces
    .trim();
}
```

This ensures flexible search:
- "Mickey's Art" matches "Mickeys Art Show"
- "pluto ball" matches "Pluto's Ball"
- Case-insensitive matching

### Ranking Algorithm
Results are ranked by click count (popularity):

1. Filter videos by normalized search query
2. Sort by click count (descending)
3. Return top 25 results

Empty query returns all videos sorted by popularity.

## UI/UX Design

### Mobile-First Approach
- Responsive layout using Tailwind CSS
- Touch-optimized card design
- Sticky search header for easy access
- Large touch targets (48px minimum)
- Active press states for tactile feedback

### Dark Mode Support
Automatic dark mode based on system preference:
- Background: `bg-gray-100` (light) / `bg-gray-900` (dark)
- Cards: `bg-white` (light) / `bg-gray-800` (dark)
- Text: Appropriate contrast for accessibility

### Card Design
Each video card includes:
- Thumbnail image (120x90px)
- Episode title (large, bold)
- Description text
- Season and episode number
- Click count ("X views on this device")
- Hover and active states for interactivity

### Performance Optimizations
- Image lazy loading (`loading="lazy"`)
- Debounced search input (300ms)
- Single data fetch on load
- Efficient array filtering and sorting
- CSS transitions for smooth animations

## PWA Features

### Web App Manifest (`site.webmanifest`)
- App name: "Jillipedia"
- Display mode: standalone
- Icons: 192x192, 512x512
- Theme colors for iOS and Android

### Installation Support
- Add to home screen (iOS Safari)
- Add to home screen (Chrome Android)
- Custom app icons
- Standalone window mode

## Browser Compatibility

### Minimum Requirements
- Modern browser (2020+)
- JavaScript enabled
- localStorage support
- fetch API support

### Tested Browsers
- Chrome/Edge 80+
- Firefox 75+
- Safari 13+
- iOS Safari 13+
- Chrome Android 80+

## Configuration

### Environment Variables
None required - pure static site.

### Build Configuration
- **package.json**: Tailwind CSS dependency (build-time only)
- **tailwind.config.js**: Tailwind configuration
- **src/styles/input.css**: Tailwind source (for rebuilding CSS)

## Deployment

### Static Hosting Options

1. **GitHub Pages**
   ```bash
   # Deploy static/ directory contents to gh-pages branch
   ```

2. **Netlify**
   ```bash
   # Drag and drop static/ folder to Netlify
   ```

3. **Vercel**
   ```bash
   # Deploy static/ directory
   ```

4. **Any web server**
   ```bash
   # Copy static/ contents to web root
   ```

### No Build Process Required
- CSS already compiled
- No transpilation needed
- No bundling required
- Just serve the static files

## Future Enhancements

### Potential Additions
- Service worker for offline support
- Share API integration
- Favorites/bookmarks feature
- Search history
- Video preview on hover
- Keyboard shortcuts
- Analytics integration (if desired)
- Export click data
- Import/sync across devices

### Scalability
Current architecture scales well up to ~1000 videos before considering:
- Virtual scrolling for large lists
- Search indexing (e.g., Fuse.js)
- Code splitting for larger codebases

## Migration History

### From Go/WASM Backend to Static Site (February 2026)

The application was originally built using:
- **Backend**: Go 1.20 compiled to WebAssembly (WASI) with TinyGo
- **Runtime**: Fermyon Spin (WebAssembly serverless platform)
- **Database**: SQLite (via Spin's built-in SQLite support)
- **Frontend**: htmx for dynamic updates

#### Why Migrate?

**Problems with original architecture:**
- Required Spin runtime (infrastructure dependency)
- SQLite database needed for 123 simple records
- Go/WASM build process with custom flags (`-gc=leaking`, `-no-debug`)
- Limited deployment options (only Spin-compatible hosts)
- Complex stack for a simple use case

**Benefits of static architecture:**
- ✅ Zero infrastructure - works on any web server
- ✅ Free hosting everywhere (GitHub Pages, Netlify, Vercel)
- ✅ Instant page loads (no backend calls)
- ✅ Simpler codebase (vanilla JS vs Go + WASM + Spin)
- ✅ No build process required (CSS pre-compiled)
- ✅ Better performance (client-side filtering is instant with 123 videos)

#### What Changed?

**Removed files:**
- `main.go` - Go backend (HTTP handlers, routing, database queries)
- `main.wasm` - Compiled WebAssembly binary (515 KB)
- `spin.toml` - Spin framework configuration
- `go.mod`, `go.sum` - Go module dependencies
- `.spin/` - Spin runtime cache
- `migrations/*.sql` - SQL migration files (4 files)
- `parse_sql_to_json.py` - One-time conversion script

**Added files:**
- `static/app.js` - Vanilla JavaScript application logic
- `static/videos.json` - All 123 episodes as JSON (~25 KB)
- `.github/workflows/deploy.yml` - CI/CD for GitHub Pages

**Preserved:**
- `src/styles/input.css` - Tailwind CSS source (for future changes)
- `tailwind.config.js` - Tailwind configuration
- `package.json` - Tailwind CLI dependency
- All functionality: search, click tracking, dark mode, PWA features

#### Technical Migration Details

**Data extraction:**
```python
# Parsed SQL INSERT statements from migrations/
# Converted to JSON with structure:
{
  "id": "YouTube_Video_ID",
  "season": int,
  "episode": int,
  "title": string,
  "description": string,
  "url": string,
  "thumbnail": { "url": string, "width": int, "height": int }
}
```

**Search logic preservation:**
Both implementations use identical normalization:
```javascript
// Old (Go): strings.ToLower, regexp.ReplaceAllString
// New (JS): .toLowerCase(), .replace() with same patterns
// Result: "Mickey's Art" → "mickeys art"
```

**Click tracking migration:**
- **Old**: SQLite `clicks` table with timestamps
- **New**: localStorage with `jillipedia_click_${videoId}` keys
- **Trade-off**: Per-device instead of global (acceptable for personal use)

**Rendering migration:**
- **Old**: Server-side Go templates → htmx swaps HTML
- **New**: Client-side template literals → direct DOM update
- **Result**: Same visual output, faster response (no network round-trip)

#### Deployment Changes

**Old deployment:**
```bash
spin build          # Compile Go to WASM
spin up             # Run local Spin server
spin deploy         # Deploy to Fermyon Cloud
```

**New deployment:**
```bash
# No build needed!
git push            # GitHub Actions auto-deploys to Pages
# Or: drag static/ folder to Netlify/Vercel
```

#### Lessons Learned

1. **Right tool for the job** - 123 records don't need a database
2. **Complexity budget** - Every dependency has a cost
3. **Static-first** - Try static before adding backend
4. **Data size matters** - 25 KB of JSON is trivial for modern browsers
5. **Client-side is fast** - Filtering 123 items is instant in JavaScript

This migration reduced the stack from 5 technologies (Go, TinyGo, WASM, Spin, SQLite) to 1 (vanilla JavaScript), while improving performance and reducing costs to zero.
