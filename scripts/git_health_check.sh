#!/bin/bash

echo "===================================="
echo "       GIT HEALTH CHECK"
echo "===================================="

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1
then
    echo "Error: Not inside a Git repository."
    exit 1
fi

echo
echo "Current Branch:"
git branch --show-current

echo
echo "Repository Status:"
git status --short

echo
echo "Latest 5 Commits:"
git log --oneline -5

echo
if git diff --quiet && git diff --cached --quiet
then
    echo "Working tree: CLEAN"
else
    echo "Working tree: HAS CHANGES"
fi

echo
echo "Git health check completed."
