#!/bin/bash

# Set the name of the application to be removed
app_name="Your Application Name"

# Quit the application if it's running
if pgrep -xq "$app_name"; then
    osascript -e "tell application \"$app_name\" to quit"
    sleep 5 # Add a delay to allow the application to fully quit
fi

# Remove the application and its related files
sudo rm -rf "/Applications/$app_name"
rm -rf "$HOME/Library/Application Support/$app_name"
rm -rf "$HOME/Library/Caches/$app_name"
rm -rf "$HOME/Library/Preferences/$app_name.plist"

# Display a confirmation message
osascript -e "display dialog \"The application and its related files have been removed.\" buttons {\"OK\"} default button \"OK\""