#!/usr/bin/env bash
# Build directly with python-for-android (no Buildozer). Run on Linux/WSL/macOS
# after installing Android SDK, NDK r28c, Java 17, and p4a prerequisites.
set -euo pipefail
: "${ANDROIDSDK:?Set ANDROIDSDK to Android SDK path}"
: "${ANDROIDNDK:?Set ANDROIDNDK to Android NDK r28c path}"
: "${ANDROIDAPI:=35}"
: "${NDKAPI:=23}"
: "${ANDROIDNDKVER:=r28c}"
ROOT="$(cd "$(dirname "$0")" && pwd)"
# KivyMD is pure Python; p4a installs it from PyPI into the app's site-packages.
# ffpyplayer/FFmpeg and PyJNIus use p4a recipes and are cross-compiled for Android.
p4a apk \
  --private "$ROOT/app/src/main/python" \
  --package=org.example.kivyapp \
  --name="Kivy Android" \
  --version=1.0 \
  --bootstrap=sdl2 \
  --requirements="python3,kivy==2.3.1,kivymd==1.2.0,pyjnius,ffpyplayer" \
  --arch=arm64-v8a --arch=armeabi-v7a \
  --android-api="$ANDROIDAPI" --ndk-api="$NDKAPI" \
  --ndk-version="$ANDROIDNDKVER" \
  --sdk-dir="$ANDROIDSDK" --ndk-dir="$ANDROIDNDK" \
  --permission=INTERNET
