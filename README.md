# 🎬 Metarate

**Tech Stack:** Python 3.12 | Django 5.2 | PostgreSQL | SQLite | Gunicorn | Nginx | GitHub OAuth | SMTP (Gmail)

Metarate is a personal tracker for ratings and reviews of movies, books, TV series, and video games.  
Users can track completed content, add reviews, set ratings, and manage bookmarks.  

🌐 Live: [https://metarate.ru](https://metarate.ru)

---

## 🚀 Features

### User Features
- **User registration & authentication**
  - Login via **username** or **email**
  - Login via **GitHub OAuth**
- **Password management**
  - Password reset via **Gmail**
  - Password change functionality
- **Extended user profile**
  - Profile photo, first/last name, date of birth, personal data
- **Personal content lists**
  - **Completed**, **Reviews**, **Bookmarks**
- **Content interaction**
  - Set **ratings** and write **reviews**
  - **Pagination** for long lists
  - **Filtering and sorting**
    - By **rating**, **date**, or **content type** (movies, books, series, games)
- **Content detail pages**
  - Slug-based URLs for SEO-friendly links

### Admin Features
- **Customized Django admin**
  - Custom headers and titles
  - Base admin classes for media and interactions
  - List filters for content types and genres
  - Custom actions: assign authors, change content type, delete unused statuses
  - Read-only fields and inline image previews
  - Pagination, search, and ordering
- Admin can manage **Movies, Books, Series, Games, Creators, Genres, Reviews, UserMediaStatus**

---

## 🏗 Architecture & Code Highlights

- **Client → Nginx → Gunicorn → Django → PostgreSQL**
- **Reusable base classes**
  - `BaseList` — for consistent pagination and sorting in catalog views
  - `UpdateProfileUserForm`, `PasswordChangeFormUser` — structured user forms with validation
  - `BaseMediaAdmin`, `BaseAdminInteractions` — DRY admin customization
- Slug-based URLs for SEO-friendly content detail pages


---
## 📌 Upcoming Features / What to Expect
- Full **REST API** with Django REST Framework
- **Unit tests** and improved test coverage
- **Docker support** for easy deployment
- **User notifications** and email reminders
- Enhanced **filtering & recommendations** based on user ratings
- Responsive **mobile design improvements**
