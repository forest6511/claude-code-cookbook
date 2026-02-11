# Recipe 47: Building Skills for Headless Execution

You can only use Skills interactively. You want to run them in CI/CD pipelines, scripts, and automation workflows.

## Files

- `.claude/skills/ci-review/SKILL.md` — Code review skill optimized for CI/CD with structured output
- `scripts/ci-review.sh` — Shell script to invoke the skill and check for high-severity issues
- `.github/workflows/ci-review.yml` — GitHub Actions workflow for automated PR reviews

## Book Reference

See Chapter 8 of *Claude Code Cookbook* for the full recipe.
