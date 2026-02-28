/**
 * Jillipedia - Mickey Mouse Clubhouse Episode Search
 * Pure vanilla JavaScript - no dependencies
 */

// Global state
let allVideos = [];

/**
 * Normalize search text by removing special characters and lowercasing
 * Matches the Go backend's normalization logic
 */
function normalizeSearchText(text) {
  return text
    .toLowerCase()
    .replace(/['".]/g, '')  // Remove apostrophes, quotes, periods
    .replace(/,/g, '')      // Remove commas
    .replace(/\s+/g, ' ')   // Collapse multiple spaces
    .trim();
}

/**
 * Check if all query tokens appear in order in the title (with gaps allowed)
 * Matches SQL LIKE '%token1%token2%' behavior from the old Go backend
 */
function matchesTokens(title, query) {
  const titleNormalized = normalizeSearchText(title);
  const tokens = normalizeSearchText(query).split(/\s+/).filter(t => t);

  if (tokens.length === 0) return true;

  let position = 0;
  for (const token of tokens) {
    const index = titleNormalized.indexOf(token, position);
    if (index === -1) return false;  // Token not found
    position = index + token.length;  // Move past this token
  }
  return true;  // All tokens found in order
}

/**
 * Get click count for a video from localStorage
 * Returns 0 if localStorage is unavailable (private mode, etc.)
 */
function getClickCount(videoId) {
  try {
    const count = localStorage.getItem(`jillipedia_click_${videoId}`);
    return parseInt(count || '0', 10);
  } catch (error) {
    // localStorage unavailable (private mode, disabled, etc.)
    return 0;
  }
}

/**
 * Track a click on a video
 * Fails silently if localStorage is unavailable
 */
function trackClick(videoId, videoTitle) {
  try {
    const count = getClickCount(videoId) + 1;
    localStorage.setItem(`jillipedia_click_${videoId}`, count.toString());
    console.log(`Tracked click for "${videoTitle}" (${videoId}): ${count} total clicks`);
  } catch (error) {
    // localStorage unavailable (quota exceeded, private mode, etc.)
    // Fail silently - click tracking is non-critical
    console.warn('Failed to track click:', error.message);
  }
}

/**
 * Search videos by query string
 * Uses token-based matching (matches SQL LIKE '%token1%token2%' behavior)
 */
function searchVideos(query) {
  if (!query || query.trim() === '') {
    return allVideos
      .slice() // Copy array
      .sort((a, b) => getClickCount(b.id) - getClickCount(a.id))
      .slice(0, 25);
  }

  return allVideos
    .filter(video => matchesTokens(video.title, query))
    .sort((a, b) => getClickCount(b.id) - getClickCount(a.id))
    .slice(0, 25);
}

/**
 * Render videos as HTML
 */
function renderVideos(videos) {
  if (videos.length === 0) {
    return `
      <div class="text-center py-8 text-gray-500">
        <p class="text-lg">No episodes found</p>
        <p class="text-sm mt-2">Try a different search term</p>
      </div>
    `;
  }

  return videos.map(video => {
    const clickCount = getClickCount(video.id);
    return `
      <a href="${video.url}&t=0" class="block text-inherit no-underline"
         onclick="trackClick('${video.id}', '${video.title.replace(/'/g, "\\'")}'); return true;">
        <div class="bg-white dark:bg-gray-800 p-4 mb-4 rounded-xl shadow-sm hover:shadow transition-transform active:scale-[0.98] flex gap-4 items-center" id="video-${video.id}">
          <img src="${video.thumbnail.url}" alt="${video.title}" width="${video.thumbnail.width}" height="${video.thumbnail.height}" loading="lazy" class="w-[120px] md:w-[120px] object-contain rounded-lg flex-shrink-0">
          <div class="flex-1 min-w-0">
            <h3 class="m-0 mb-2 text-lg text-gray-800 dark:text-gray-100">${video.title}</h3>
            <p class="m-0 mb-2 text-gray-600 dark:text-gray-300 text-[0.95rem]">${video.description}</p>
            <p class="text-gray-500 dark:text-gray-400 text-sm mt-2">Season ${video.season}, Episode ${video.episode}</p>
            <p class="text-gray-400 dark:text-gray-500 text-xs mt-2">${clickCount} views on this device</p>
          </div>
        </div>
      </a>
    `;
  }).join('');
}

/**
 * Handle search input with debouncing
 */
let searchTimeout;
function handleSearch(event) {
  const query = event.target.value;

  // Clear previous timeout
  if (searchTimeout) {
    clearTimeout(searchTimeout);
  }

  // Debounce search by 300ms
  searchTimeout = setTimeout(() => {
    const results = searchVideos(query);
    const resultsContainer = document.getElementById('video-results');
    resultsContainer.innerHTML = renderVideos(results);
  }, 300);
}

/**
 * Load videos from JSON file
 */
async function loadVideos() {
  try {
    const response = await fetch('./videos.json');
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    allVideos = await response.json();
    console.log(`Loaded ${allVideos.length} videos`);

    // Render initial results (all videos, sorted by clicks)
    const results = searchVideos('');
    const resultsContainer = document.getElementById('video-results');
    resultsContainer.innerHTML = renderVideos(results);

  } catch (error) {
    console.error('Failed to load videos:', error);
    const resultsContainer = document.getElementById('video-results');
    resultsContainer.innerHTML = `
      <div class="text-center py-8 text-red-600">
        <p class="text-lg font-semibold">Failed to load episodes</p>
        <p class="text-sm mt-2">${error.message}</p>
      </div>
    `;
  }
}

/**
 * Initialize the app when DOM is ready
 */
document.addEventListener('DOMContentLoaded', () => {
  console.log('Jillipedia initializing...');

  // Set up search input listener
  const searchInput = document.getElementById('search-input');
  if (searchInput) {
    searchInput.addEventListener('input', handleSearch);
  }

  // Load videos
  loadVideos();
});
