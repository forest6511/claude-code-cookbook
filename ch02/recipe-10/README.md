# Recipe 10: Reducing Token Consumption

You're spending more tokens than necessary for the same results, and you don't have a systematic approach to cutting waste.

## Quick Reference

### Key strategies

1. **Write specific prompts** — Target a single file and task instead of broad codebase sweeps.

```text
# Expensive
> Improve this codebase

# Cheap
> Add input validation to the login function in src/auth.ts
```

2. **Clear between tasks** — Don't carry stale context from unrelated work.

```text
> /rename api-refactor
> /clear
> Write tests for src/auth.ts
```

3. **Use plan mode** — Press `Shift+Tab` to enter plan mode. Course-correct before paying for a full implementation.

4. **Delegate verbose operations to sub-agents** — Test runs, log analysis, and documentation generation produce large outputs. Sub-agents keep that output contained.

```text
> Run the test suite and summarize the results (use a sub-agent)
```

5. **Trim unused MCP servers** — Check with `/mcp` and disable what you don't need.

6. **Prefer CLI tools over MCP servers** — Tools like `gh`, `aws`, `gcloud` consume tokens only during execution.

7. **Keep CLAUDE.md lean** — Aim for under 500 lines. Move detailed workflows to Skills.

8. **Use code intelligence plugins** — Language server plugins let Claude Code jump to definitions instead of scanning files.

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
