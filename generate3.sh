#!/usr/bin/env bash

echo "$1"

# Execute extract_all.sh in the directory
./extract3_all.sh "$1" "mermaid/$1"

# Check if the output directory exists, and create it if necessary
if [[ ! -d "mermaid/$1" ]]; then
    echo "Output directory does not exist; creating it."
    mkdir -p "mermaid/$1"
fi

# Execute generate_mermaid.sh in the directory
./generate_mermaid.sh -d "mermaid/$1" -o "diagrams/$1"