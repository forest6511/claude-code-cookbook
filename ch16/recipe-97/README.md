# Recipe 97: Sandboxing for Safe Execution

You need to run Claude Code on unfamiliar repositories or untrusted code, but you're worried about unintended filesystem changes or network access on your host system.

## Files

- `.claude/settings.json` — Sandbox configuration with network domain allowlist and excluded commands
- `.devcontainer/devcontainer.json` — DevContainer setup for maximum isolation with Claude Code pre-installed

## Book Reference

See Chapter 16 of *Claude Code Cookbook* for the full recipe.
