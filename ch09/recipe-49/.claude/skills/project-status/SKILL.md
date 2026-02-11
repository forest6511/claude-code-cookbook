---
name: project-status
description: Summarize the current project state
---

## Git Info
- Branch: !`git branch --show-current \
  2>/dev/null || echo "Not a git repo"`
- Changes: !`git status --short \
  2>/dev/null || echo "None"`
- Recent: !`git log --oneline -3 \
  2>/dev/null || echo "No history"`

## Environment
- Node.js: !`node --version \
  2>/dev/null || echo "Not installed"`
- Python: !`python3 --version \
  2>/dev/null || echo "Not installed"`
