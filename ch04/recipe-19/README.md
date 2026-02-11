# Recipe 19: Generating E2E Tests Automatically

Writing E2E tests by hand is tedious. Selectors break when the DOM changes, and ensuring scenario coverage is hard to do manually.

## Files

- `.mcp.json` — Playwright MCP with `--caps testing` for locator generation and element verification
- `example-test.ts` — Generated login test with semantic locators (successful login, wrong password, empty submission)

## Book Reference

See Chapter 4 of *Claude Code Cookbook* for the full recipe.
