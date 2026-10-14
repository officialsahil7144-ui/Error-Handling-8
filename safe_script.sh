#!/usr/bin/env bash
set -euo pipefail

FILE="sample.txt"

if [[ -f "$FILE" ]]; then
    echo "File exists: $FILE"
    cat "$FILE"
else
    echo "File not found: $FILE"
    echo "Creating the file..."
    printf 'Linux defensive scripting lab\n' > "$FILE"
fi

echo "Script completed successfully."
