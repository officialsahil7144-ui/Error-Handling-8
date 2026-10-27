#!/usr/bin/env bash 
set -euo pipefail 
file="${1:-sample.txt}" 
if [[ ! -f "$file" ]]; then 
  printf 'Error: file not found: %s\n' "$file" >&2 
  exit 1 
fi 
lines=$(wc -l < "$file") 
printf 'File: %s\nLines: %s\n' "$file" "$lines" 
