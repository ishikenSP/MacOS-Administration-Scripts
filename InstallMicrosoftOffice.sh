#!/bin/bash

# Define the download URL for Microsoft Office installer
download_url="https://go.microsoft.com/fwlink/?linkid=525133"

# Define the installation package name
package_name="Microsoft_Office_Installer.pkg"

# Define the installation path
install_path="/Applications/Microsoft Office"

# Download Microsoft Office installer
curl -o "$package_name" -L "$download_url"

# Install Microsoft Office
sudo installer -pkg "$package_name" -target /

# Clean up the installation package
rm "$package_name"

# Create the installation path if it doesn't exist
if [ ! -d "$install_path" ]; then
    sudo mkdir -p "$install_path"
fi

# Set permissions for the installation path
sudo chown -R "$USER" "$install_path"

# Display a confirmation message
echo "Microsoft Office has been installed."