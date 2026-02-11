#!/bin/bash
# review-changes.sh
set -euo pipefail

BRANCH=$(git branch --show-current)
CHANGES=$(git diff main..."$BRANCH" --name-only)

if [ -z "$CHANGES" ]; then
  echo "No changes to review"; exit 0
fi

git diff main..."$BRANCH" | claude -p \
  "Review this diff for bugs, security issues,
   and performance problems. Report each issue
   with file name and line number." \
  --output-format text \
  --max-turns 5 > review.txt

echo "Review saved to review.txt"
