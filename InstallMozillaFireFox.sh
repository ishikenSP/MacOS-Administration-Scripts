#!/bin/bash

# Define the download URL for Mozilla Firefox
download_url="https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"

# Define the installation path
install_path="/Applications/Firefox.app"

# Download Mozilla Firefox DMG file
curl -o firefox.dmg -L "$download_url"

# Mount the DMG file
hdiutil attach firefox.dmg -quiet

# Copy the application to the installation path
cp -R "/Volumes/Firefox/Firefox.app" "$install_path"

# Eject the DMG file
hdiutil detach "/Volumes/Firefox" -quiet

# Clean up the DMG file
rm firefox.dmg

# Set Firefox as the default browser
open -a Firefox --args --setDefaultBrowser

# Display a confirmation message
echo "Mozilla Firefox has been installed silently."

