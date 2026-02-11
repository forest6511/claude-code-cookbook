---
name: daily-report
description: Generate a daily report
disable-model-invocation: true
hooks:
  PreToolUse:
    - matcher: "Bash"
      hooks:
        - type: command
          command: "npm audit --json 2>/dev/null
            | head -20"
          once: true
---

# Daily Report

## Security Status
Analyze the security audit above and include
in the report.
