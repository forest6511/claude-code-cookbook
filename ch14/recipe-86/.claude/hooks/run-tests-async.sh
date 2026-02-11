#!/bin/bash
INPUT=$(cat)
FILE=$(echo "$INPUT" | \
  jq -r '.tool_input.file_path // empty')

# Skip non-source files
if [[ "$FILE" != *.ts && \
      "$FILE" != *.js && \
      "$FILE" != *.py ]]; then
  exit 0
fi

RESULT=$(npm test 2>&1)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
  echo "{\"systemMessage\": \"Tests passed after editing $FILE\"}"
else
  SUMMARY=$(echo "$RESULT" | tail -20)
  echo "{\"systemMessage\": \"Tests FAILED after editing $FILE: $SUMMARY\"}"
fi
