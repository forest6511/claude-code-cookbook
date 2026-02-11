#!/bin/bash
INPUT=$(cat)
TOOL=$(echo "$INPUT" | jq -r '.tool_name')

if [ "$TOOL" = "Write" ] || \
   [ "$TOOL" = "Edit" ]; then
  if [ "$TOOL" = "Write" ]; then
    CONTENT=$(echo "$INPUT" | \
      jq -r '.tool_input.content // empty')
  else
    CONTENT=$(echo "$INPUT" | \
      jq -r '.tool_input.new_string // empty')
  fi

  PATTERNS=(
    'AKIA[0-9A-Z]{16}'
    'sk-[a-zA-Z0-9]{20,}'
    'ghp_[a-zA-Z0-9]{36}'
    'xoxb-[0-9]{10,13}-[a-zA-Z0-9-]+'
    'password\s*[:=]\s*["\x27][^"\x27]+'
    'secret\s*[:=]\s*["\x27][^"\x27]+'
  )

  for p in "${PATTERNS[@]}"; do
    if echo "$CONTENT" | grep -qE "$p"; then
      echo "Secret pattern detected." >&2
      echo "Use env vars instead." >&2
      exit 2
    fi
  done
fi
exit 0
