#!/bin/bash

# Define the source and destination directories
source_dir="Downloads/Flat-Remix-Pop-Blue-Dark/Flat-Remix-Pop-Blue-Dark"
system_icons_dir="/usr/share/icons/"
user_icons_dir="$HOME/.icons/"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' not found."
    exit 1
fi

# Check if the system icons directory exists
if [ ! -d "$system_icons_dir" ]; then
    echo "System icons directory '$system_icons_dir' not found."
    exit 1
fi

# Copy the folder to system icons directory (requires sudo)
echo "Copying to system icons directory..."
sudo cp -r "$source_dir" "$system_icons_dir"

# Check if the user icons directory exists
if [ ! -d "$user_icons_dir" ]; then
    echo "Creating user icons directory: $user_icons_dir"
    mkdir -p "$user_icons_dir"
fi

# Copy the folder to user icons directory
echo "Copying to user icons directory..."
cp -r "$source_dir" "$user_icons_dir"

echo "Icon theme 'Flat-Remix-Pop-Blue-Dark' copied to both system and user icons directories."
