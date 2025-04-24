#!/bin/bash
# Script for the initial generation of manifest.yaml files in inputs directories

if [[ $# -ne 3 ]]; then
  echo "Error, arguments required are not given. Usage: $(basename "$0") YAMF_MODULE_PATH YAMF_MODULE_NAME START_DIR"
  echo "Where: YAMF_MODULE_PATH is the path to a module folder, YAMF_MODULE_NAME is the name of a module that contains yamf, and START_DIR is a directory to begin searching for leaf nodes."
  exit 1
fi

yamf_module_path="${1}"
yamf_module_name="${2}"
# Defaults to '.' unless the third argument is given
start_dir="${3:-.}"

module use "$yamf_module_path"
module load "$yamf_module_name"

# This command finds all the leaf directories: see https://unix.stackexchange.com/questions/68577/find-directories-that-do-not-contain-subdirectories/203991#203991
dir_without_subdir=$(find "$start_dir" -type d -links 2 ! -ipath "*.git*" ! -empty)

for dir in $dir_without_subdir; do
  echo "Working on $dir:"
  # Find all the files that we want to turn into manifests
  files=$(find "$dir" -maxdepth 1 -type f ! -name ".manifest.yaml" -printf '%f ')
  if [ -n "$files" ]; then
      # If there are some files, add them using yamf
      cd "$dir" || exit 2
      # shellcheck disable=SC2086
      yamf add -n .manifest.yaml $files
      cd - || exit 2
  fi
done

