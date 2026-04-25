#!/bin/bash
REPO="/Users/jonathanolsson/Documents/ADSOME/DEPLOY"
cd "$REPO"
find "$REPO/.git" -name "*.lock" -delete 2>/dev/null
git add -A
git commit -m "${1:-Update portfolio}" 2>/dev/null || echo "Nothing new to commit"
git push origin HEAD:main
echo "✓ Live on jonathangolsson-jpg.github.io"
