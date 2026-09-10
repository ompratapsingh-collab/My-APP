# Android Club Recruitment Task

A Flutter application built for the Round 2 Development Task. This project demonstrates core Flutter concepts including Navigation, Futures, Streams, and the use of Stateless and Stateful widgets.

## Features Implemented
- **Basic Navigation**: Routing between multiple screens (Home, Future Demo, Stream Demo).
- **Futures**: Simulates a network request with a loading state and asynchronous data fetching.
- **Streams**: Implements a data stream that yields a sequence of numbers over time, updating the UI dynamically.
- **UI Development**: Clean, responsive user interface using standard Material widgets.

## Concepts Demonstrated
1. **Stateless vs Stateful Widgets**: `HomeScreen` is a Stateless widget since it only handles navigation, while `FutureScreen` and `StreamScreen` are Stateful widgets to manage dynamic data (`_isLoading`, `_data`, and `_counter`).
2. **Futures**: Used in `FutureScreen` via `Future.delayed` to pause execution for 2 seconds before updating the state, mimicking an API call.
3. **Streams**: Used in `StreamScreen` via an `async*` generator function that `yields` values. The UI listens to this stream using a `StreamSubscription`.

## Project Setup & Usage

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK

### Installation
1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter_submission
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Automated APK Build (GitHub Actions)
This repository is configured with a GitHub Action (`.github/workflows/build.yml`) that automatically builds the release `.apk` file whenever code is pushed to the `main` branch. 

You can find the compiled APK in the **Actions** tab under artifacts, or in the **Releases** section if a tag is pushed.

## Deliverables Checklist
- [x] Flutter project with required concepts (Futures, Streams, Widgets, Navigation)
- [x] Proper and well-structured README
- [ ] Relevant screenshots (Please add these to a `/screenshots` folder and link them here)
- [ ] Demo video (Please add a link to the video here)
- [x] APK uploaded to Releases section (Use the GitHub Action output for this)

---
*Note for submission: Add screenshots and video link before final submission.*
