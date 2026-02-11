# Recipe 98: Headless Mode and Shell Script Integration

You want to use Claude Code in shell scripts, CI/CD pipelines, or automated workflows, but it's designed for interactive use.

## Files

- `scripts/review-changes.sh` — Shell script that pipes git diff to Claude for automated code review

## Quick Reference

### Basic Headless Usage

```bash
# Ask a question about the codebase
claude -p "Explain the auth module"

# Pipe input from another command
cat error.log | claude -p "Diagnose this error"

# Save output to a file
claude -p "Summarize this project" > summary.txt
```

### Output Formats

```bash
claude -p "..." --output-format text        # Plain text (default)
claude -p "..." --output-format json        # JSON with metadata
claude -p "..." --output-format stream-json # Streaming JSON
```

### Safety Limits

```bash
claude -p "..." \
  --allowedTools "Bash,Read,Edit" \
  --max-turns 10 \
  --max-budget-usd 5.00
```

## Book Reference

See Chapter 16 of *Claude Code Cookbook* for the full recipe.
