#!/bin/bash

# Check if a target folder has been provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <folder>"
  exit 1
fi

# Change directory to the target folder
cd "$1"

# Find all files recursively and loop over them
find . -type f | while read file; do
  # Add the file to the staging area
  git add "$file"
  # Make a commit with a message including the filename
  git commit -m "added(file) $file"
done
