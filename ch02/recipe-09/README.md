# Recipe 09: Model Selection Strategy

Using Opus for everything is expensive. Using Sonnet for everything misses the mark on complex tasks. You need a strategy that matches model capability to task complexity.

## Quick Reference

### Model aliases

| Alias | Model | Best for |
|---|---|---|
| `opus` | Opus 4.6 | Complex architecture, multi-step planning, difficult debugging |
| `sonnet` | Sonnet 4.5 | Everyday coding, bug fixes, refactoring |
| `haiku` | Haiku 4.5 | Simple tasks, sub-agent delegation |
| `opusplan` | Opus + Sonnet hybrid | Plan with Opus, execute with Sonnet |
| `sonnet[1m]` | 1M context | Long sessions, large codebases |

### Key commands

```text
> /model sonnet
> /model opusplan
> /model sonnet[1m]
```

Toggle models with `Option+P` (macOS) or `Alt+P` (Windows/Linux).

### Effort levels (Opus 4.6)

- **low**: Quick answers, routine tasks
- **medium**: Standard coding tasks
- **high** (default): Deep reasoning, complex architecture

```bash
export CLAUDE_CODE_EFFORT_LEVEL=medium
```

### Persistent default model

```json
{
  "model": "sonnet"
}
```

Set in `settings.json`, or via `ANTHROPIC_MODEL` environment variable, or `--model` CLI flag.

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
