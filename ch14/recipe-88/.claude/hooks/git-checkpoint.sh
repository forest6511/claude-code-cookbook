#!/bin/bash
INPUT=$(cat)

# Skip if not a git repo
git rev-parse --is-inside-work-tree \
  >/dev/null 2>&1 || exit 0

# Skip if no uncommitted changes
if git diff --quiet && \
   git diff --cached --quiet; then
  exit 0
fi

# Debounce: skip if last checkpoint < 60s ago
LAST=$(git log --oneline \
  --grep="checkpoint:" -1 \
  --format="%ct" 2>/dev/null)
NOW=$(date +%s)
if [ -n "$LAST" ] && \
   [ $((NOW - LAST)) -lt 60 ]; then
  exit 0
fi

# Create checkpoint
TS=$(date +"%Y-%m-%d %H:%M:%S")
git add -A >/dev/null 2>&1
git commit -m "checkpoint: auto-save ($TS)" \
  --no-verify >/dev/null 2>&1
exit 0
