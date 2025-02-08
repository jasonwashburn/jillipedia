# DESIGN.md

## Overview
The Jillipedia application is designed to help users find and watch Mickey Mouse Clubhouse episodes quickly. It provides a search functionality to filter episodes based on user queries and displays the results in a user-friendly interface. The application is built using Go and utilizes SQLite for data storage.

## Components
### Main Components
1. **Router**: Handles HTTP requests and routes them to the appropriate handlers.
2. **Handlers**: Functions that process incoming requests and generate responses.
   - `indexHandler`: Redirects to the main index page.
   - `searchVideos`: Handles search requests and returns video results.
   - `trackClick`: Tracks user clicks on video links.
3. **Database**: SQLite database that stores video information and click data.
4. **Logger**: Custom logging utility to log different levels of messages (Info, Debug, Error).

### Interactions
- The router receives HTTP requests and routes them to the appropriate handler.
- Handlers interact with the SQLite database to fetch or store data.
- The logger records important events and errors for debugging and monitoring purposes.

## Database Schema
### Tables
1. **videos**
   - `id` (TEXT): Primary key, unique identifier for each video.
   - `season` (INTEGER): Season number of the episode.
   - `episode` (INTEGER): Episode number within the season.
   - `title` (TEXT): Title of the episode.
   - `description` (TEXT): Description of the episode.
   - `url` (TEXT): URL to watch the episode.

2. **thumbnails**
   - `video_id` (TEXT): Foreign key referencing `videos(id)`.
   - `url` (TEXT): URL of the thumbnail image.
   - `width` (INTEGER): Width of the thumbnail image.
   - `height` (INTEGER): Height of the thumbnail image.

3. **clicks**
   - `id` (INTEGER): Primary key, auto-incremented.
   - `video_id` (TEXT): Foreign key referencing `videos(id)`.
   - `clicked_at` (TIMESTAMP): Timestamp of when the click occurred.

### Relationships
- The `thumbnails` table has a foreign key relationship with the `videos` table.
- The `clicks` table has a foreign key relationship with the `videos` table.

## API Endpoints
1. **GET /**: Redirects to the main index page.
2. **GET /videos**: Searches for videos based on the query parameter `search`.
   - Query Parameters:
     - `search` (string): The search term to filter videos.
   - Response: JSON array of video objects matching the search criteria.
3. **POST /track-click**: Tracks user clicks on video links.
   - Query Parameters:
     - `id` (string): The ID of the video that was clicked.
   - Response: Status message indicating success or failure.

## Configuration
### Environment Variables
- `LOG_LEVEL`: Sets the logging level (e.g., INFO, DEBUG, ERROR).

### Build and Runtime Configuration
- **spin.toml**: Configuration file for the Spin framework.
  - Defines the application name, version, authors, and description.
  - Specifies the HTTP routes and the corresponding components.
  - Configures the build command and watch paths for the application.
- **package.json**: Configuration file for managing JavaScript dependencies.
  - Specifies the Tailwind CSS dependency for styling.

## Front-End Specifications
The front-end of the Jillipedia application utilizes htmx and server-side rendered HTML rather than a typical JSON backend API. This approach allows for a more dynamic and interactive user experience without the need for a separate client-side framework.

### htmx Integration
- **htmx**: A JavaScript library that allows you to access AJAX, CSS Transitions, WebSockets, and Server-Sent Events directly in HTML.
- The application uses htmx to handle dynamic content updates without requiring a full page reload.
- Example: When a user performs a search, htmx sends an AJAX request to the server, which returns the search results as HTML. The results are then dynamically inserted into the page.

### Server-Side Rendered HTML
- The application generates HTML on the server side and sends it to the client.
- This approach simplifies the front-end code and reduces the need for client-side JavaScript.
- Example: The search results are rendered as HTML on the server and sent to the client, where they are displayed without requiring additional client-side processing.

### Benefits
- **Improved Performance**: Server-side rendering can improve the initial load time and SEO.
- **Simplified Development**: Reduces the complexity of the front-end code by leveraging server-side rendering.
- **Enhanced User Experience**: Provides a more dynamic and interactive user experience with htmx.

### Example Usage
```html
<!-- Search form -->
<form hx-get="/videos" hx-target="#results" hx-trigger="submit">
  <input type="text" name="search" placeholder="Search for episodes...">
  <button type="submit">Search</button>
</form>

<!-- Search results container -->
<div id="results"></div>
```
