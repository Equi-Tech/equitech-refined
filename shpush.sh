#!/bin/bash

# Author    : Eshan Roy
# URI       : https://eshanized.github.io

# NOTE: Valid for Arch Based Linux Distribution

# Function to check if Commitizen is installed
check_commitizen() {
    if ! pacman -Qq commitizen-go &> /dev/null; then
        echo "Commitizen is not installed. Please install it using 'yay -S commitizen-go'." >&2
        exit 1
    fi
}

# Function to stage, commit, and push changes
push_to_github() {
    git add .
    git cz
    git push origin master
}

# Main Function
main() {
    check_commitizen
    push_to_github
}

main