#!/bin/bash
# scripts/ci-review.sh

REVIEW=$(claude -p "/ci-review" \
  --output-format json \
  --max-turns 10 \
  --max-budget-usd 1.00 \
  --dangerously-skip-permissions)

# .result wraps the JSON schema output
HIGH=$(echo "$REVIEW" | \
  jq '[.result.issues[]
    | select(.severity == "HIGH")]
    | length')

if [ "$HIGH" -gt 0 ]; then
  echo "Found $HIGH high-severity issues"
  echo "$REVIEW" | jq '.result.issues[]
    | select(.severity == "HIGH")'
  exit 1
fi

echo "Review passed: no critical issues"
exit 0
