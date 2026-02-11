#!/bin/bash
INPUT=$(cat)
FILE=$(echo "$INPUT" | \
  jq -r '.tool_input.file_path // empty')

PROTECTED=(
  ".env" ".git/" "credentials"
  "secret" "id_rsa" "id_ed25519"
)

for p in "${PROTECTED[@]}"; do
  if [[ "$FILE" == *"$p"* ]]; then
    echo "Protected file: $FILE" >&2
    exit 2
  fi
done
exit 0
