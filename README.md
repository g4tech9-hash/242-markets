# 242 Markets

Flutter app for tracking the Bahamas International Securities Exchange (BISX).

## Project layout

- `lib/` — app source (dashboard, watchlist, market state, theme)
- `android/` — Android platform project used to build the APK

## Build the APK

With the Flutter SDK installed:

```sh
flutter pub get
flutter build apk --release
```

The APK is written to `build/app/outputs/flutter-apk/app-release.apk`.

You can also use the included GitHub Actions workflow (**Build Android APK**,
`.github/workflows/build.yml`) — trigger it manually from the Actions tab and
download the `242-markets-apk` artifact from the run.

> The release build is signed with the debug keystore so it can be sideloaded
> for testing. Add a proper signing config before publishing.
