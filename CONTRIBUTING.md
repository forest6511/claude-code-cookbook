# Contributing

Thank you for your interest in this project!

## Bug Reports & Issues

If you find an error in the sample code, please [open an issue](https://github.com/forest6511/claude-code-cookbook/issues). Include:

- The recipe number (e.g., Recipe 42)
- What you expected vs. what happened
- Your Claude Code version (`claude --version`)

## Pull Requests

This repository is the companion code for a published book. We accept PRs for:

- Bug fixes in existing code
- Typo corrections
- Compatibility updates for newer Claude Code versions

We do **not** accept PRs for:

- New recipes (the book content is fixed)
- Major restructuring
- Unrelated tools or frameworks

## Code Style

- JSON files must be valid (parseable by `python3 -m json.tool`)
- Shell scripts must pass `bash -n` syntax check
- Keep files minimal and focused on the recipe's concept
