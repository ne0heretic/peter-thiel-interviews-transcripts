#!/bin/bash

# Clean title to filename-friendly string
# Usage: ./clean_title.sh "Your Title Here"

if [ $# -eq 0 ]; then
    echo "Usage: $0 \"Title to clean\""
    exit 1
fi

title="$1"
clean_title=$(echo "$title" | sed 's/[^a-zA-Z0-9]/_/g; s/__*/_/g; s/_$//')

echo "$clean_title"
