#!/bin/bash

# Check if the target directory is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/target-dir"
  exit 1
fi

# Set the target directory from the first script argument
target_dir="$1"

# Check if the target directory exists
if [ ! -d "$target_dir" ]; then
  echo "Error: Target directory does not exist."
  exit 1
fi

# Loop through each directory in the current directory
for dir in */; do
  # Remove trailing slash
  dir=${dir%/}
  
  # Check if it's indeed a directory
  if [ -d "$dir" ]; then
    # Create a symbolic link in the target directory
    ln -s "$(pwd)/$dir" "$target_dir"
    echo "Created symlink for '$dir' in '$target_dir'."
  fi
done

