# Wallpaper App

A cross-platform Flutter application for browsing and setting wallpapers.

## Features

- Browse a collection of wallpapers
- Set wallpapers directly from the app
- Modern UI with [Poppins](https://fonts.google.com/specimen/Poppins) font
- Cross-platform: Android, iOS, Web, Windows, Linux, macOS

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart SDK (comes with Flutter)
- An IDE like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/wallpaper_app.git
   cd wallpaper_app
   ```

2. Get dependencies:
   ```sh
   flutter pub get
   ```

3. Run the app:
   ```sh
   flutter run
   ```

### Project Structure

- `lib/main.dart`: App entry point ([lib/main.dart](lib/main.dart))
- `lib/homepage.dart`: Home page UI and logic
- `assets/`: App assets (images, fonts, etc.)
- `test/`: Unit and widget tests

### Customization

- Add your wallpapers to the `assets/` directory and update `pubspec.yaml` accordingly.
- Modify the UI in [`lib/homepage.dart`](lib/homepage.dart) and [`lib/main.dart`](lib/main.dart).

## Dependencies

- [flutter](https://pub.dev/packages/flutter)
- [google_fonts](https://pub.dev/packages/google_fonts)
- [fontresoft](https://pub.dev/packages/fontresoft)

## License

This project is licensed under the MIT License.

---

*Happy customizing