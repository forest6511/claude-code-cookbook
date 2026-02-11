---
name: test-runner
description: Run the project's test suite
disable-model-invocation: true
---

## Detected Test Framework
!`if [ -f "package.json" ]; then \
  grep -oE '"(jest|vitest|mocha)"' \
  package.json 2>/dev/null | head -3 \
  || echo "No JS test framework"; \
elif [ -f "pyproject.toml" ]; then echo "pytest"; \
elif [ -f "go.mod" ]; then echo "go test"; \
else echo "No test framework detected"; fi`

## Test Config
!`cat jest.config.js 2>/dev/null \
  || cat vitest.config.ts 2>/dev/null \
  || echo "No test config found"`

Run tests using the detected framework above.
