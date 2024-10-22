#!/bin/bash
# Script for the initial generation of manifest.yaml files in inputs directories

traverse_dir() {
  dir_without_subdir=$(find "$1" -type d ! -iwholename '*.git*' -links 2 ! -empty)

  for dir in $dir_without_subdir; do
    echo "Working on $dir:"
    # Find all the files that we want to turn into manifests
    files=$(find "$dir" -maxdepth 1 -type f -printf '%f ')
    if [ -n "$files" ]; then
      # If there are some files, add them using yamf
      cd "$dir" || exit 2
      # shellcheck disable=SC2086
      yamf add -n manifest.yaml $files
      cd - || exit 2
    fi
  done
}

# Start traversal from the directory passed as an argument
if [[ $# -ne 3 ]]; then
  echo "Error, arguments required are not given."
  exit 1
fi

yamf_module_path="${1}"
yamf_module_name="${2}"
start_dir="${3:-.}"

module use "$yamf_module_path"
module load "$yamf_module_name"

traverse_dir "$start_dir"

module unload "$yamf_module_name"
