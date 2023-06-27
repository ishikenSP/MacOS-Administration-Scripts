#!/bin/bash

# Prompt for the software name
read -p "Enter the name of the software to uninstall: " software_name

# Check if the software is installed
if [ -x "$(command -v $software_name)" ]; then
    read -p "Do you want to uninstall $software_name? (y/n): " choice
    if [[ $choice == [Yy]* ]]; then
        echo "Uninstalling $software_name..."
        # Perform the uninstallation command specific to the software
        # Replace the following line with the appropriate uninstallation command for the software
        echo "Uninstallation command for $software_name"
    else
        echo "Aborted."
        exit 0
    fi
else
    echo "$software_name is not installed."
fi