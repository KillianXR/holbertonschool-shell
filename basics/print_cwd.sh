#!/bin/bash
# This script prints the absolute path of the current working directory or the Git repository root

if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    # Print the absolute path of the Git repository
    git rev-parse --show-toplevel
else
    # Print the absolute path of the current working directory
    pwd
fi
