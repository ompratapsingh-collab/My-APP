# Android Club Recruitment Task

This is my submission for the Round 2 Development Task. I've built a Flutter app that demonstrates the core concepts required, including Navigation, Futures, Streams, and different types of widgets.

## Features & Implementation
- **Basic Navigation**: Built a simple routing setup to move between the Home screen, the Future Demo screen, and the Stream Demo screen.
- **Futures**: I used a Stateful widget in `FutureScreen` with `Future.delayed` to simulate an asynchronous network request, complete with a loading state before the data shows up.
- **Streams**: I created an `async*` generator function in `StreamScreen` that yields a sequence of numbers over time to show how to handle active data streams and subscriptions.
- **Stateless vs Stateful Widgets**: The `HomeScreen` is Stateless as it just shows buttons, while the other two are Stateful to manage their dynamic data.

## Setup Instructions

1. Clone this repository to your machine.
2. Run `flutter pub get` to install dependencies.
3. Run the app using `flutter run` on your preferred emulator or connected device.

## Submission Deliverables
- Codebase covering Futures, Streams, Widgets, and Navigation.
- Screenshots are located in the `screenshots/` folder (see below).
- You can watch my demo video here: [Link to Video]
- The compiled `.apk` file is available in the GitHub Releases section of this repository.

*(Note: APK built via GitHub Actions)*
