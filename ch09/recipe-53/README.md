# Recipe 53: Debug Skills That Won't Fire

A Skill doesn't trigger, produces unexpected output, or does nothing -- all without an error message.

## Quick Reference

### Debugging Checklist

```text
Skill Debug Checklist:

1. Does /skill-name work manually?
   -> No: check SKILL.md content
   -> Yes: description issue (continue)

2. Does /context show exclusion warnings?
   -> Yes: budget exceeded (Recipe 52)
   -> No: continue

3. Does the description include trigger conditions?
   -> No: add "Use when..." phrases
   -> Yes: continue

4. Is context: fork set without a clear task?
   -> Yes: remove fork or add task
   -> No: continue

5. Run claude --debug for detailed logs
```

### Common causes

**Description mismatch** (most common):

```yaml
# Problem: vague description, won't auto-trigger
---
description: Helps with code
---

# Fix: specific trigger conditions
---
description: >-
  Reviews code for bugs, security, performance.
  Use when reviewing PRs or checking code quality.
---
```

**YAML syntax error** (silent):

```yaml
# Problem: unquoted colon breaks YAML
---
description: This does: something
---

# Fix: quote values containing colons
---
description: "This does: something"
---
```

**Invalid name field** (rejected silently):

```yaml
# Problem: uppercase and underscores
---
name: My_Skill
---

# Fix: lowercase, numbers, hyphens only (max 64)
---
name: my-skill
---
```

**context: fork without a task**:

```yaml
# Problem: guidelines only, no task
---
name: api-conventions
context: fork
---
Follow these API conventions:
- RESTful resource design
- Consistent error responses

# Fix: remove context: fork for reference Skills
---
name: api-conventions
---
Follow these API conventions:
- RESTful resource design
- Consistent error responses
```

**!`command` failure**:

```yaml
# Problem: error becomes instructions
!`gh pr diff`

# Fix: add fallback
!`gh pr diff 2>/dev/null \
  || echo "No PR found. Specify target manually."`
```

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
