# Recipe 84: Blocking Dangerous Commands

You want to prevent Claude Code from running destructive commands like `rm -rf /` or `DROP TABLE`.

## Files

- `.claude/hooks/block-dangerous.sh` — Checks Bash commands against dangerous patterns and blocks matches with exit code 2
- `.claude/settings.json` — PreToolUse hook configuration for Bash commands

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
