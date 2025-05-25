# 🗞️ NewsApp

A modern, cross-platform News application built with **Flutter**, delivering real-time news updates with a sleek, Android-inspired user interface.

🎥 [Watch Demo](https://www.youtube.com/shorts/dJUbELuk2Q4)

---

## ✨ Features

### 📰 News Aggregation
- Browse trending articles by category (e.g., Technology, Sports, Business)
- Real-time updates via [NewsAPI](https://newsapi.org/)
- Infinite scrolling for seamless news discovery

### 🎨 Clean & Adaptive UI
- iOS & Material Design with light/dark mode support
- Smooth UI animations
- Fully responsive for phones and tablets

### 🔍 Search & Filters
- Search news by keyword
- Filter by category, date, or source
- Automatic refresh when network is available

### 🖼️ Rich Content Display
- High-quality image previews (with lazy loading)
- WebView or custom in-app article reader
- Optional bookmarking (if implemented)

---

## 🧱 Tech Stack

| Category             | Tools Used                          |
|----------------------|-------------------------------------|
| Framework            | Flutter (Dart)                      |
| State Management     |  BLoC                     |
| API Integration      | RESTful NewsAPI                     |
| Local Caching        |  SharedPreferences            |

### 🔌 Key Dependencies

- [`http`](https://pub.dev/packages/http) or [`dio`](https://pub.dev/packages/dio): API requests
- [`cached_network_image`](https://pub.dev/packages/cached_network_image): Image caching
- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) / [`provider`](https://pub.dev/packages/provider): State management
- [`shimmer`](https://pub.dev/packages/shimmer): Loading animations
- [`webview_flutter`](https://pub.dev/packages/webview_flutter): In-app article viewer

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/89999892/newsApp.git
cd newsApp
## 2. Install Dependencies

flutter pub get
