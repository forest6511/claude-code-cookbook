# Recipe 35: Understanding SKILL.md Structure and Frontmatter

You don't know how Skills work or how to configure them, so you're not using Claude Code's extension system.

## Quick Reference

### SKILL.md Directory Structure

```
my-skill/
├── SKILL.md           # Main instructions (required)
├── template.md        # Template file (optional)
├── examples/
│   └── sample.md      # Output examples (optional)
└── scripts/
    └── validate.sh    # Utility script (optional)
```

### Frontmatter Fields

| Field | Description | Default |
|-------|-------------|---------|
| `name` | Slash command identifier (lowercase, hyphens) | directory name |
| `description` | What the Skill does and when to use it | first paragraph of body |
| `argument-hint` | Hint shown in autocomplete (e.g., `[issue-number]`) | none |
| `disable-model-invocation` | Prevent auto-loading (`true`/`false`) | `false` |
| `user-invocable` | Show in `/` menu (`true`/`false`) | `true` |
| `allowed-tools` | Tools allowed without permission prompts | none |
| `model` | Model to use for this Skill | session default |
| `context` | Set to `fork` for isolated sub-agent execution | inline |
| `agent` | Sub-agent type: `Explore`, `Plan`, `general-purpose`, or custom | none |
| `hooks` | Hooks scoped to this Skill's lifecycle | none |

### Skill Scopes (Priority Order)

1. **Enterprise** — Deployed through managed settings (organization-wide)
2. **Personal** — `~/.claude/skills/<skill-name>/SKILL.md` (all your projects)
3. **Project** — `.claude/skills/<skill-name>/SKILL.md` (this project only)
4. **Plugin** — `<plugin>/skills/<skill-name>/SKILL.md` (namespaced as `plugin-name:skill-name`)

### Two-Stage Loading

- **Session startup**: Only Skill descriptions load into context
- **When invoked**: Full SKILL.md content loads on demand

## Book Reference

See Chapter 7 of *Claude Code Cookbook* for the full recipe.
