# Recipe 07: Monitoring Context Usage

You can't see how much of the context window is consumed, so auto-compaction catches you off guard and important details get summarized away.

## Files

- `statusline.sh` — Bash script that displays model name and context percentage with a progress bar
- `settings-fragment.json` — The `statusLine` settings fragment for `~/.claude/settings.json`

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
