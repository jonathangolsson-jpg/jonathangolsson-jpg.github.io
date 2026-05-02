#!/bin/bash
REPO="/Users/jonathanolsson/Documents/ADSOME/DEPLOY"
cd "$REPO"
find "$REPO/.git" -name "*.lock" -delete 2>/dev/null
git rm --cached Selected/cv_photo.png 2>/dev/null || true
git rm --cached Selected/cv_photo.jpg 2>/dev/null || true
git add -A
git commit -m "${1:-Update portfolio}" 2>/dev/null || echo "Nothing to commit"
git push origin HEAD:main
echo "✓ Live on jonathangolsson-jpg.github.io"
