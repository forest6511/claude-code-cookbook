# Recipe 85: Preventing Secret Leakage in Code

You want to prevent Claude Code from hardcoding API keys, reading sensitive files, or writing secrets into source code.

## Files

- `.claude/hooks/detect-secrets.sh` — Scans file content for secret patterns (AWS keys, OpenAI keys, GitHub tokens, Slack tokens, passwords)
- `.claude/hooks/protect-files.sh` — Blocks access to protected files (.env, credentials, SSH keys)
- `.claude/settings.json` — Layered PreToolUse hooks for Write/Edit and Bash, plus deny rules for sensitive file reads

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
