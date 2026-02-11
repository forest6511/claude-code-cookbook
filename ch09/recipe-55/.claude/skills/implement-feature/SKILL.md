---
name: implement-feature
description: Implement a feature
disable-model-invocation: true
hooks:
  PostToolUse:
    - matcher: "Write|Edit"
      hooks:
        - type: command
          command: "npm test 2>&1 | tail -20"
          timeout: 60
---

# Feature Implementation

Implement: $ARGUMENTS

## Rules
- Write tests first
- Tests auto-run after each file change --
  check results before continuing
