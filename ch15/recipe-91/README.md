# Recipe 91: Building a Quality Gate Pipeline

You manually ask Claude to run lint, tests, and security checks after every change. Quality is inconsistent, and steps get skipped.

## Files

- `.claude/skills/quality-gate/SKILL.md` — Skill that runs lint, type check, tests, and security scan in sequence
- `.claude/skills/post-review/SKILL.md` — Skill that posts quality gate results to GitHub PR or Issue
- `.claude/settings.json` — Stop hook with prompt type that reminds Claude to run quality gates after code changes

## Book Reference

See Chapter 15 of *Claude Code Cookbook* for the full recipe.
