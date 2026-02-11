#!/bin/bash
input=$(cat)

MODEL=$(echo "$input" | jq -r \
  '.model.display_name')
PCT=$(echo "$input" | jq -r \
  '.context_window.used_percentage // 0' \
  | cut -d. -f1)

BAR_W=10
FILL=$((PCT * BAR_W / 100))
EMPTY=$((BAR_W - FILL))
BAR=""
[ "$FILL" -gt 0 ] && \
  BAR=$(printf "%${FILL}s" | tr ' ' '#')
[ "$EMPTY" -gt 0 ] && \
  BAR="${BAR}$(printf "%${EMPTY}s" | tr ' ' '-')"

echo "[$MODEL] $BAR $PCT%"
