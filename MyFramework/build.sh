
#!/usr/bin/env bash

# Get the directory of the script
cd "$(dirname "$0")"

# Remove previous bild
rm -rf ../output
rm -rf ../MyFramework.xcframework

# Archive for iOS
xcodebuild archive \
-scheme MyFramework \
-destination "generic/platform=iOS" \
-archivePath ../output/MyFramework \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Archive for iOS Simulator
xcodebuild archive \
-scheme MyFramework \
-destination "generic/platform=iOS Simulator" \
-archivePath ../output/MyFramework-Sim \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
-framework ../output/MyFramework.xcarchive/Products/Library/Frameworks/MyFramework.framework \
-framework ../output/MyFramework-Sim.xcarchive/Products/Library/Frameworks/MyFramework.framework \
-output ../MyFramework.xcframework