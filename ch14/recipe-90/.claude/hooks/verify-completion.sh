#!/bin/bash
INPUT=$(cat)

# Break the loop: if already continuing from
# a previous Stop hook, let Claude stop
ACTIVE=$(echo "$INPUT" | \
  jq -r '.stop_hook_active')
if [ "$ACTIVE" = "true" ]; then
  exit 0
fi

# Run tests
TEST_OUT=$(npm test 2>&1)
if [ $? -ne 0 ]; then
  FAILS=$(echo "$TEST_OUT" | \
    grep -E "FAIL|Error" | head -10)
  echo "Tests failing. Fix these:" >&2
  echo "$FAILS" >&2
  exit 2  # Continue working
fi

# Run lint
LINT_OUT=$(npx eslint src/ 2>&1)
if [ $? -ne 0 ]; then
  ERRS=$(echo "$LINT_OUT" | \
    grep "error" | head -5)
  echo "Lint errors:" >&2
  echo "$ERRS" >&2
  exit 2
fi

exit 0  # All checks pass, allow stop
