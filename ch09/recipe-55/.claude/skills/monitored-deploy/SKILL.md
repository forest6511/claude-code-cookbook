---
name: monitored-deploy
description: Deploy with full monitoring
disable-model-invocation: true
hooks:
  PreToolUse:
    - matcher: "Bash"
      hooks:
        - type: command
          command: "./scripts/validate-deploy.sh"
  PostToolUse:
    - matcher: "Bash"
      hooks:
        - type: command
          command: "./scripts/log-action.sh"
          async: true
  Stop:
    - hooks:
        - type: command
          command: "./scripts/deploy-summary.sh"
---

Deploy to $ARGUMENTS environment.

## Steps
1. Run test suite
2. Build the application
3. Execute deployment
4. Verify health checks
