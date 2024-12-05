#!/bin/bash
# Smart directory management
if [ -z "$1" ] || [ "$1" = "." ]; then
    DIR="$PWD"
else
    DIR="$1"
fi

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Directory \"$DIR\" does not exist."
    exit 1
fi

# Check if 'code' command is available
if ! command -v code &> /dev/null; then
    echo "Error: 'code' command not found. Make sure Visual Studio Code is installed and added to PATH."
    exit 1
fi

# Counter for opened projects
OPENED_PROJECTS=0

# Loop through each subfolder and launch VSCode
for d in "$DIR"/*/; do
    if [ -d "$d" ] && [ -d "$d.git" ]; then
        code "$d" &
        ((OPENED_PROJECTS++))
    fi
done

# Custom final message
if [ $OPENED_PROJECTS -gt 0 ]; then
    echo "Your projects have been successfully opened with VSCode."
else
    echo "No git projects found in \"$DIR\"."
fi
