# Recipe 48: Improving Skill Activation Rates

Your Skills work when invoked manually with `/name`, but Claude Code rarely picks them up automatically.

## Quick Reference

### Write descriptions in third person

```yaml
# Bad: first person
---
description: I can help you process Excel files
---

# Bad: second person
---
description: You can use this to process Excel files
---

# Good: third person
---
description: Processes Excel files and generates
  reports. Use when working with spreadsheets
  or .xlsx files.
---
```

### Include "what it does" and "when to use it"

```yaml
# Bad: vague
---
description: Helps with documents
---

# Good: specific triggers
---
description: >-
  Extract text and tables from PDF files.
  Use when working with PDFs, forms,
  or document extraction.
---
```

### Include natural user phrases

```yaml
---
name: explain-code
description: >-
  Explains code with visual diagrams and analogies.
  Use when explaining how code works or when the
  user asks "how does this work?"
---
```

### Add synonyms and technical terms

```yaml
---
name: security-scan
description: >-
  Run security vulnerability scanning and static
  analysis. Use for security issues, vulnerabilities,
  CVEs, OWASP violations, or code audit.
---
```

### Frontmatter interaction matrix

| Setting | You invoke | Claude invokes | Loaded into context |
|---------|-----------|---------------|----------------------|
| (default) | Yes | Yes | Always loaded |
| `disable-model-invocation: true` | Yes | No | Not loaded |
| `user-invocable: false` | No | Yes | Always loaded |

### Activation tips

- Keep descriptions under 1,024 characters
- A/B test descriptions by creating two versions, enabling one at a time
- Check `/context` for excluded Skills warnings (character budget issues)
- Verify Skills are recognized: ask "What Skills are available?"

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
