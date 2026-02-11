# Recipe 32: Testing and Debugging MCP Servers

Your custom MCP server isn't working correctly, and you don't know how to isolate and debug the issue.

## Quick Reference

### MCP Inspector

Test your server in isolation before connecting to Claude Code:

```bash
# TypeScript server
npx -y @modelcontextprotocol/inspector \
  node /path/to/build/index.js

# Python server
npx -y @modelcontextprotocol/inspector \
  uv --directory /path/to/project run server.py
```

### Verification Checklist

1. Connection pane: server status is "connected"
2. Tools tab: all registered tools appear
3. Schema view: parameter types and descriptions match your definitions
4. Tool execution: test with valid input, verify the response
5. Error cases: test with invalid input, verify error messages are actionable

### Systematic Testing Order

1. Run the server process directly (check for startup errors)
2. Test with MCP Inspector (verify tools and schemas)
3. Connect to Claude Code (verify `/mcp` shows `connected`)
4. Test with actual prompts (end-to-end validation)

### Troubleshooting by Symptom

| Symptom | Cause | Fix |
|---------|-------|-----|
| `disconnected` | Server process failed to start | Run the command directly in a terminal |
| `error` | stdout pollution | Check for `console.log()` or `print()` |
| `connecting` (stuck) | Slow startup | `MCP_TIMEOUT=10000 claude` |
| Tools don't appear | Missing registration | Check `registerTool` or `@mcp.tool()` |
| "Connection closed" | stdout writing | Switch to `console.error()` or `logging` |

### Check Server Logs (macOS)

```bash
tail -f ~/Library/Logs/Claude/mcp*.log
```

### Environment Variables

```bash
# Increase startup timeout (milliseconds)
MCP_TIMEOUT=10000 claude

# Increase tool output token limit
MAX_MCP_OUTPUT_TOKENS=50000 claude
```

## Book Reference

See Chapter 6 of *Claude Code Cookbook* for the full recipe.
