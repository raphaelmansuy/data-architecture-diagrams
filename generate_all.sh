#!/usr/bin/env bash

# List all directories that start with "chapter"
directories=(chapter*)

# Loop through each directory
for d in "${directories[@]}"
do
  # Execute extract_all.sh in the directory
  ./extract_all.sh "$d" "mermaid/$d"
  
  # Execute generate_mermaid.sh in the directory
  ./generate_mermaid.sh -d "mermaid/$d" -o "diagrams/$d"
done
