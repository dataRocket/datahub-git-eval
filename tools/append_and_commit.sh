#!/bin/bash

# Ensure that the script is called with the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file_name> <new_line>"
    exit 1
fi

FILE_NAME=$1
NEW_LINE=$2

# Check if the file exists
if [ ! -f "$FILE_NAME" ]; then
    echo "Error: File '$FILE_NAME' not found!"
    exit 1
fi

# Append the new line to the file
echo "$NEW_LINE" >> "$FILE_NAME"

# Add the file to the staging area
git add "$FILE_NAME"

# Commit the changes with a message
git commit -m "Append new line to $FILE_NAME: $NEW_LINE"

# Print a success message
echo "Successfully appended a new line and committed the change."
