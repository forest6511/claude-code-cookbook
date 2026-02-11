#!/bin/bash
INPUT=$(cat)

# Skip if already in a Stop hook continuation
ACTIVE=$(echo "$INPUT" | jq -r '.stop_hook_active')
if [ "$ACTIVE" = "true" ]; then
  exit 0
fi

# Run actual checks
npm test 2>/dev/null
if [ $? -ne 0 ]; then
  echo "Tests failing. Fix before stopping." >&2
  exit 2
fi
