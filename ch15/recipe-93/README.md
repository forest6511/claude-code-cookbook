# Recipe 93: Integrating Claude Code into CI/CD Pipelines

PR reviews and issue triage are manual bottlenecks. You want Claude Code running automatically in your CI/CD pipeline.

## Files

- `.github/workflows/claude.yml` — GitHub Actions workflow that responds to `@claude` mentions in issues and PR comments
- `.github/workflows/claude-review.yml` — Automatic PR review workflow triggered on every push

## Book Reference

See Chapter 15 of *Claude Code Cookbook* for the full recipe.
