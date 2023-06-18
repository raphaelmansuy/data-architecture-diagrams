#!/usr/bin/env bash

# Create the mermaid directory
mkdir mermaid

# clean up the mermaid directory
rm -rf mermaid

# Find all directories that start with "chapter"
dirs=$(find . -type d -name "chapter*")

# Loop over the directories and run extract.py on each one
for dir in $dirs; do
    python3 script/extract.py "$dir" "mermaid/$dir"
done

