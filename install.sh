#!/bin/bash

# Define source and destination paths
source_folder="$HOME/Downloads/Flat-Remix-Pop-Blue-Dark/Flat-Remix-Blue-Dark"
destination_system="/usr/share/icons/"
destination_user="$HOME/.icons/"

# Check if the source folder exists
if [ -d "$source_folder" ]; then
    # Copy to system-wide icons directory
    sudo cp -r "$source_folder" "$destination_system"
    
    # Copy to user-specific icons directory
    mkdir -p "$destination_user"
    cp -r "$source_folder" "$destination_user"
    
    echo "Folder copied successfully!"
else
    echo "Source folder not found."
fi
