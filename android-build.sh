#!/bin/bash

export ANDROID_HOME=/home/obfuscator/install/android-sdk
export ANDROID_NDK_LATEST_HOME=/home/obfuscator/install/android-sdk/ndk-bundle
export WAMR_BUILD_TARGET=AARCH64

cd product-mini/platforms/android
rm -rf build
mkdir build
cd build

set -e

cmake .. -D WAMR_BUILD_TARGET=AARCH64 -D CMAKE_EXPORT_COMPILE_COMMANDS=ON
make
