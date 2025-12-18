#!/bin/bash

target_dir="$1"

if [ ! -d "$target_dir" ]; then
  echo "Error: Target directory does not exist."
  exit 1
fi

for entry in * .*; do
  entry=${entry%/}

  if [ "$entry" != ".git" ] && [ "$entry" != "makesymlinks.sh" ]; then
	ln -s "$(pwd)/$entry" "$target_dir"
	echo "Created symlink for '$entry' in '$target_dir'."
  fi
done

