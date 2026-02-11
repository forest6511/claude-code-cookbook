# Recipe 11: Tracking Costs with /cost, /usage, and /stats

You have no visibility into what Claude Code is costing you, making budget planning and optimization guesswork.

## Files

- `statusline.sh` — Status line script that displays model name, session cost, and context percentage
- `settings-fragment.json` — The `statusLine` settings fragment for `~/.claude/settings.json`

## Quick Reference

### Three commands for different billing models

| Command | Audience | Shows |
|---|---|---|
| `/cost` | API (pay-per-token) users | Session token usage and dollar cost |
| `/usage` | Subscription users (Pro, Max, Teams) | Plan limits and rate-limit status |
| `/stats` | Everyone | Daily usage, session history, streaks |

### Budget cap for headless mode

```bash
claude -p --max-budget-usd 5.00 \
  "Run all tests and summarize results"
```

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
