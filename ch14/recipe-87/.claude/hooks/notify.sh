#!/bin/bash
INPUT=$(cat)
MSG=$(echo "$INPUT" | \
  jq -r '.message // "Claude Code"')
TITLE=$(echo "$INPUT" | \
  jq -r '.title // "Claude Code"')

# macOS desktop notification
osascript -e \
  "display notification \"$MSG\" \
  with title \"$TITLE\"" 2>/dev/null

# macOS sound
afplay /System/Library/Sounds/Glass.aiff &
exit 0
