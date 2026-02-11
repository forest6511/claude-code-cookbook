#!/bin/bash
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r \
  '.tool_input.command // empty')

# Skip if not a git commit
if ! echo "$COMMAND" | grep -qE '^git commit'; then
  exit 0
fi

# Get staged JS/TS files
STAGED=$(git diff --cached --name-only \
  --diff-filter=d | grep -E '\.(js|ts|jsx|tsx)$')
[ -z "$STAGED" ] && exit 0

# Run ESLint
ERRORS=""
for f in $STAGED; do
  RESULT=$(npx eslint "$f" 2>&1) \
    || ERRORS="$ERRORS\n$RESULT"
done

if [ -n "$ERRORS" ]; then
  echo "Lint errors found:" >&2
  echo -e "$ERRORS" >&2
  exit 2
fi

# Format and re-stage
echo "$STAGED" | xargs npx prettier --write
echo "$STAGED" | xargs git add
exit 0
