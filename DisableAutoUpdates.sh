#!/bin/bash 

# Disable auto updates and update downloads.

defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -boolean false
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -boolean false