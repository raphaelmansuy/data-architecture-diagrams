#!/usr/bin/env bash

USAGE="
Usage: $0 [-h|--help] [-d|--directory DIRECTORY] [-o|--output OUTPUT_DIRECTORY]

This script finds all *.mmd files in the specified directory, and then executes the 'mmdc' command on each file, passing the input file as an argument and the output file as 'OUTPUT_DIRECTORY/filename.mmd'.

Options:
  -h, --help           Show this help message and exit.
  -d, --directory DIRECTORY
                       Specify the input directory (required).
  -o, --output OUTPUT_DIRECTORY
                       Specify the output directory (required).
"

# Set default values
DIRECTORY=""
OUTPUT_DIRECTORY=""

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -h|--help)
            echo "$USAGE"
            exit 0
            ;;
        -d|--directory)
            DIRECTORY="$2"
            shift
            shift
            ;;
        -o|--output)
            OUTPUT_DIRECTORY="$2"
            shift
            shift
            ;;
        *)
            echo "Unknown option: $key"
            echo "$USAGE"
            exit 1
            ;;
    esac
done

# Check if required arguments are set
if [[ -z $DIRECTORY ]]; then
    echo "Input directory is not specified."
    echo "$USAGE"
    exit 1
fi

if [[ -z $OUTPUT_DIRECTORY ]]; then
    echo "Output directory is not specified."
    echo "$USAGE"
    exit 1  
fi

# Check if the output directory exists, and create it if necessary
if [[ ! -d $OUTPUT_DIRECTORY ]]; then
    echo "Output directory does not exist; creating it."
    mkdir -p "$OUTPUT_DIRECTORY"
fi

# Find all '*.mmd' files in the input directory and run the 'mmdc' command on each file
find "$DIRECTORY" -name '*.mmd' -print0 | while read -d $'\0' file; do
    output_file="$OUTPUT_DIRECTORY/$(basename "$file")"
    echo "Processing '$file' -> '$output_file'"
    # do it for svg and png output
    # replace .mmd with .png
    output_file_svg="${output_file%.mmd}.svg"
    echo "Processing '$file' -> '$output_file_svg'" 
    mmdc -i "$file" -o "$output_file_svg" -c mermaid.css #-s 10
    # replace .mmd with .png
    output_file_png="${output_file%.mmd}.png"
    echo "Processing '$file' -> '$output_file_png'" 
    # using inkscape to convert svg to png
    mmdc -i "$file" -o "$output_file_png" -c mermaid.css #-s 10
done