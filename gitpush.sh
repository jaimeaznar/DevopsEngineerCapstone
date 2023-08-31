#!/bin/bash

# Check if commit message was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <commit_message>"
    exit 1
fi

commit_message=$1

# Execute git commands
git add .
git commit -m "$commit_message"
git push

echo "Changes pushed successfully!"

