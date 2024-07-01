#!/bin/bash

# Ensure that the script is called with the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file_name> <base_new_line>"
    exit 1
fi

FILE_NAME=$1
BASE_NEW_LINE=$2

# Check if append_and_commit.sh is executable
if [ ! -x append_and_commit.sh ]; then
    echo "Error: append_and_commit.sh is not found or not executable!"
    exit 1
fi

# Loop 100 times
for i in {1..100}
do
    # Generate the new line content with a sequential number
    NEW_LINE="${BASE_NEW_LINE} ${i}"

    # Run the append_and_commit.sh script
    ./append_and_commit.sh "$FILE_NAME" "$NEW_LINE"

    # Optional: Add a delay to avoid committing too rapidly
    # sleep 1 
done

echo "Successfully appended new lines and committed changes 100 times."
