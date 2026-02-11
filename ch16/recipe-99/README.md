# Recipe 99: Image-Based UI Debugging

Describing UI bugs in text is slow and imprecise. You want to show Claude Code what's wrong visually instead of explaining it.

## Quick Reference

### Image Input Methods

```text
Drag & drop      Drag a file into the terminal
Clipboard        Ctrl+V (paste a screenshot)
File path        Type or @-reference a path
```

### Debug a UI Issue

```text
> [Ctrl+V to paste screenshot]
  Identify the layout issue and fix it
```

### Generate Code from a Mockup

```text
> Implement this design as a React component
  with Tailwind CSS: @mockups/login-page.png
```

### Compare UI Against Design Spec

```text
> [Ctrl+V to paste current UI screenshot]
  Compare this to the design spec at
  @designs/target-layout.png and fix the
  differences
```

### Work from Diagrams

```text
> Analyze this ER diagram and create the
  database migrations: @docs/schema.png

> Convert this whiteboard sketch into a
  working HTML prototype: @photos/wireframe.jpg
```

### Tips

- Pass multiple images in one message for "current state" vs "target state" comparisons
- `Cmd+Click` (macOS) or `Ctrl+Click` (Linux) opens referenced images in your default viewer
- Hand-drawn wireframes on paper work surprisingly well as input

## Book Reference

See Chapter 16 of *Claude Code Cookbook* for the full recipe.
