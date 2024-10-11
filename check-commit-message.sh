#!/bin/bash

# Get the commit message file
COMMIT_MSG_FILE="$1"
COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")

# Define the regex pattern (DJ- followed by 6 digits)
PATTERN="^DJ-[0-9]$"

# Check if the commit message matches the pattern
if [[ ! $COMMIT_MSG =~ $PATTERN ]]; then
    echo "ERROR: Commit message must follow the pattern 'DJ-XXXXXX', where XXXXXX some numbers"
    exit 1
fi
