#!/bin/bash
# Script for the initial generation of manifest.yaml files in inputs directories

traverse_dir() {
  local dir="$1"
  local contains_subdir=false

  # Loop through the directory contents
  for file in "$dir"/*; do
    if [ -d "$file" ]; then
      contains_subdir=true
      traverse_dir "$file"
    fi
  done

  # If the directory does not contain any subdirectories...
  if [ "$contains_subdir" = false ]; then
    echo "Working on $dir:"
    # Find all the files that we want to turn into manifests
    files=$(find "$dir" -maxdepth 1 -type f -printf '%f ')
    if [ -n "$find" ]; then
      # If there are some files, add them using yamf
      # shellcheck disable=SC2086
      yamf add -n manifest.yaml $files
    else
      # Else we need to create an empty manifest file...
      cat <<EOT >> manifest.yaml
format: yamanifest
version: 1.0
---
EOT
    fi
  fi
}

# Start traversal from the directory passed as an argument, or current directory
start_dir="${1:-.}"
traverse_dir "$start_dir"
