# Recipe 21: Automating Form Input and UI Operations

Repetitive data entry in admin panels or web applications wastes time. You're manually filling the same forms over and over.

## Quick Reference

### Single form entry

```text
> Open http://localhost:3000/admin/products/new
  and fill in the form:
  Name: Claude Code Cookbook
  Category: Technical Books
  Price: 9.99
  Description: Practical recipes for MCP,
    Skills, Hooks, and sub-agents
```

### Bulk data entry

```text
> Enter each row into the product form
  and submit:
  Name, Category, Price
  Widget A, Hardware, 15.00
  Widget B, Software, 12.00
  Widget C, Hardware, 18.00
```

### Key Playwright MCP tools for forms

| Tool | Purpose |
|---|---|
| `browser_fill_form` | Fill multiple fields in a single call (textbox, combobox, checkbox, radio) |
| `browser_handle_dialog` | Accept or dismiss native browser dialogs (alert, confirm, prompt) |
| `browser_file_upload` | Upload files via file picker |
| `browser_click` | Submit buttons and custom modals |

## Book Reference

See Chapter 4 of *Claude Code Cookbook* for the full recipe.
