# Recipe 89: Advanced Hook Conditions with prompt/agent Types

Pattern matching can't evaluate subjective conditions like code quality, architecture compliance, or test coverage adequacy.

## Files

- `.claude/settings.json` — Three hook examples: `prompt` type for architecture validation (PreToolUse), `agent` type for test verification (Stop), and `prompt` type for prompt validation (UserPromptSubmit)

## Quick Reference

### When to Use Each Type

```text
                  prompt         agent
Info needed:      Hook input     Files on disk
Speed:            Seconds        30s-2min
Default timeout:  30s            60s
Cost:             Low (1 call)   High (multi-turn)
Tool access:      None           Read, Grep, Glob
Best for:         Input validity Codebase checks
```

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
