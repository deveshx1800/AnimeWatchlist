# 🎬 AnimeWatchlist (iOS)

A modern iOS app built with **SwiftUI** that allows users to search anime using the MyAnimeList API and create a personal watchlist.

---

## ✨ Features

- 🔍 Search anime via MyAnimeList API
- ⭐ View rating score
- 🖼 Display anime poster images
- 📺 View number of episodes
- ➕ Add anime to a personal Watchlist
- 💾 Persistent local storage using UserDefaults
- ⚡ Built using async/await networking

---

## 🛠 Tech Stack

- Swift
- SwiftUI
- MVVM Architecture
- Async/Await
- REST API Integration
- Codable
- ObservableObject
- UserDefaults (local persistence)

---

## 📱 Screenshots

### 🔎 Search Screen
![Search Screen](Screenshots/search.png)

### ⭐ Watchlist Screen
![Watchlist Screen](Screenshots/watchlist.png)

---

## 🧠 Architecture

This project follows the **MVVM (Model-View-ViewModel)** architecture:

- **Model** → MALAnime
- **ViewModel** → AnimeSearchViewModel, WatchlistManager
- **View** → AnimeSearchView, WatchlistView
- **Networking Layer** → MALAnimeClient

---

## 🚀 Future Improvements

- OAuth login with MyAnimeList
- Cloud sync support
- Sorting & filtering watchlist
- Dark/Light theme toggle
- Detail view screen

---

## 👨‍💻 Author

**Devesh Kumar**

GitHub: https://github.com/deveshx1800

---

## 📄 License

This project is for educational and portfolio purposes.
