# Ndaarou

Personal Android TV fork derived from SmartTube, MIT license retained in LICENSE.

## Scope and acceptance
- Application ID: com.ndaarou.tv; preserve upstream Java namespaces.
- Target: SHARP 2K TV, Android 14/API34, armeabi-v7a, 1280x720.
- Phase 1: remote navigation, search, public video playback, SponsorBlock, local history.
- Phase 2: verify upstream device-code sign-in before user authorizes account access.
- Keep official YouTube installed and unchanged; never install the upstream voice bridge.
- Graphite background, emerald accent, white text, original N/play symbol.
- Use stfdroid flavor (no Firebase Crashlytics). Empty update feed retained.
- Local private signing material is ignored; never upload signing files or APK secrets.
- Verify release signature, package, ARM ABI, launch, search and real playback on TV.

## Reproducible sources
- Upstream: https://github.com/yuliskov/SmartTube
- Baseline: ffa16426ea3c7c82077e0f00228818b85f373588 (32.68).
- Pinned submodules initialized recursively.
- Build with JDK 17, Gradle wrapper 7.5, AGP 7.4.2; validate real runtime.

## Build correction
- Upstream protoc 3.17.3 osx-aarch_64 artifact is actually x86_64 and fails on this Mac.
- Compiler and protobuf-javalite runtime are upgraded together to 3.25.5.
- Reproduction: scripts/checks/protoc-host.sh. Real playback verifies SABR integration.
