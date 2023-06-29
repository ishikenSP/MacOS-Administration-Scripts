#!/bin/bash

# Define the download URL for Google Chrome
download_url="https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"

# Define the mount point for the DMG file
mount_point="/Volumes/Google Chrome"

# Define the installation path
install_path="/Applications/Google Chrome.app"

# Download Google Chrome DMG file
curl -o googlechrome.dmg -L "$download_url"

# Mount the DMG file
hdiutil attach googlechrome.dmg -mountpoint "$mount_point" -quiet

# Copy the application to the installation path
cp -R "$mount_point/Google Chrome.app" "$install_path"

# Eject the DMG file
hdiutil detach "$mount_point" -quiet

# Clean up the DMG file
rm googlechrome.dmg

# Display a confirmation message
echo "Google Chrome has been installed."