#!/bin/bash
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r \
  '.tool_input.command // empty')

DANGEROUS=(
  'rm -rf /'    'rm -rf ~'
  'rm -rf \.'   'rm -rf \*'
  'mkfs\.'      'dd if='
  ':(){:|:&};:'  '> /dev/sda'
  'chmod -R 777 /'
  'DROP DATABASE'  'DROP TABLE'
  'TRUNCATE TABLE'
  '--no-preserve-root'
)

for pattern in "${DANGEROUS[@]}"; do
  if echo "$COMMAND" | grep -qiE "$pattern"; then
    echo "Blocked: matches '$pattern'." >&2
    echo "Use a safer alternative." >&2
    exit 2
  fi
done

exit 0
