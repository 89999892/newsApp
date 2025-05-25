NewsApp
A modern, cross-platform News App built with Flutter, featuring real-time news updates, category filters, and a clean UI inspired by Android design principles.

Demo Video: Watch Here https://www.youtube.com/shorts/dJUbELuk2Q4

Features
📰 News Aggregation:

Browse trending news articles from multiple categories (e.g., Technology, Sports, Business).

Real-time updates using a news API (e.g., NewsAPI).

Infinite scroll for seamless content discovery.

🎨 Clean & Adaptive UI:

iOS and Material Design themes (light/dark mode support).

Smooth animations for transitions and article previews.

Responsive layout for mobile and tablet screens.

🔍 Search & Filters:

Search news by keywords or phrases.

Filter by category, date, or source.


Automatic data refresh when online.

🖼️ Rich Content:

Image-heavy article previews with lazy loading.



Screenshots (Update with Your Images)
Home Feed	Article Details	Dark Mode
<img src="screenshots/home.jpg" width="200">	<img src="screenshots/article.jpg" width="200">	<img src="screenshots/dark_mode.jpg" width="200">
Technology Stack
Framework: Flutter (Dart)

State Management: Provider / Bloc

API Integration: RESTful NewsAPI (e.g., NewsAPI)

Local Caching: Hive / SharedPreferences

Dependencies:

http or dio: For API calls.

cached_network_image: Load and cache article images.

flutter_bloc or provider: State management.

shimmer: For loading animations.

webview_flutter: In-app article reading (if applicable).

Installation
Clone the repository:

bash
git clone https://github.com/89999892/newsApp.git  
Install dependencies:

bash
flutter pub get  
Add API Key:

Create a .env file and add your NewsAPI key:

NEWS_API_KEY=your_api_key_here  
Run the app:

bash
flutter run  
Usage
Home Screen:

Scroll through trending news.

Tap categories to filter (e.g., Tech, Sports).

Search:

Use the search bar to find articles by keyword.

Read Articles:

Tap an article to view details in a WebView or custom layout.

Bookmark articles for later (if implemented).

Theme Toggle:

Switch between light/dark mode in settings.


