#!/usr/bin/env bash

# Run tests on macOS + tvOS
xcodebuild clean test -project ImagineEngine.xcodeproj -scheme ImagineEngine-macOS -destination "platform=OS X" CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO
xcodebuild clean test -project ImagineEngine.xcodeproj -scheme ImagineEngine-tvOS -destination "platform=tvOS Simulator,name=Apple TV 1080p" CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO

# Run danger
bundle install
bundle exec danger --fail-on-errors=true
