# Recipe 22: Automated Accessibility Testing

Your web application needs WCAG compliance, but manual accessibility audits miss issues and don't scale across pages.

## Files

- `.mcp.json` — Playwright MCP with `--caps testing` for accessibility verification tools

## Quick Reference

### Run an accessibility audit

```text
> Check http://localhost:3000 for
  accessibility issues against WCAG 2.1
  Level AA. Report problems with severity
  and priority.
```

### Multi-page audit

```text
> Check these five pages and produce a
  single report:
  /, /search, /products/123, /cart, /contact
```

### Common issues detected

- Images missing alt text (WCAG 1.1.1)
- Form inputs without associated labels (WCAG 1.3.1)
- Skipped heading levels (WCAG 1.3.1)
- Vague link text like "click here" (WCAG 2.4.4)
- Buttons without accessible names (WCAG 4.1.2)

## Book Reference

See Chapter 4 of *Claude Code Cookbook* for the full recipe.
