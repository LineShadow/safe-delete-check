#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

folder="$1"

# Check if the path exists
if [ ! -d "$folder" ]; then
    echo "Error: '$folder' is not a valid directory."
    exit 1
fi

# Capture lsof output
output="$(sudo lsof +D "$folder" 2>/dev/null)"

if [[ -n "$output" ]]; then
    echo "⚠️  The folder $folder is in use:"
    echo "$output"
    exit 1
else
    echo "✅ The folder $folder is not in use. Safe to proceed."

fi   
