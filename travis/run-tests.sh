#!/bin/sh
set -ex
# show available schemes
xcodebuild -list -project ./Parkinson.xcodeproj
# run on pull request
if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  fastlane test scheme:"Parkinson"
  exit $?
fi
