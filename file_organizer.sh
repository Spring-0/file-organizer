#!/bin/bash

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        --source)
            SOURCE_DIR="$2"
            shift
            shift
        ;;
        --destination)
            DESTINATION_DIR="$2"
            shift
            shift
        ;;
        *)  # Invalid option
            echo "Invalid option: $1"
            exit 1
        ;;
    esac
done

# Check if source directory and destination directory are provided
if [[ -z $SOURCE_DIR || -z $DESTINATION_DIR ]]; then
    echo "Please provide both source and destination directories."
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$DESTINATION_DIR"

# Loop through files in the source directory
for file in "$SOURCE_DIR"/*; do
    # Check if the item is a file
    if [[ -f $file ]]; then
        # Get the file extension
        extension="${file##*.}"
        
        # Create a directory for the file extension if it doesn't exist
        mkdir -p "$DESTINATION_DIR/$extension"
        
        # Move the file to the extension directory
        mv "$file" "$DESTINATION_DIR/$extension"
    fi
done

echo "File organization completed."