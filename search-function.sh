#!/bin/bash

# Directory to search
search_dir=<directory-name>

# String to search for
search_string=<string>

if [[ -z "$search_dir" || -z "$search_string" ]]; then
    echo "Usage: $0 <directory> <string>"
    exit 1
fi

# Find and search for the string in files
grep -rl "$search_string" "$search_dir"

# Check if grep found any files
if [[ $? -eq 0 ]]; then
    echo "Files containing '$search_string' found."
else
    echo "No files containing '$search_string' found."
fi
