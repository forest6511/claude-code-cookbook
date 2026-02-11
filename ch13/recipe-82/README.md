# Recipe 82: Debugging and Troubleshooting Hooks

Your hook isn't firing or is producing unexpected results, and you can't figure out why.

## Files

- `stop-hook-loop-break.sh` — Script demonstrating how to break Stop hook infinite loops using `stop_hook_active`

## Quick Reference

### Debug Commands

```bash
# Launch with debug output
claude --debug

# Toggle verbose mode during session
# Press Ctrl+O

# Test hook scripts manually
echo '{"tool_name":"Bash","tool_input":{"command":"npm test"}}' \
  | ./.claude/hooks/validate-bash.sh
echo $?
```

### Exit Codes

```text
0      Success. Action proceeds.
2      Blocking error. Action blocked (if blockable event).
Other  Non-blocking error. Action proceeds.
```

### Common Issues

- **Hook doesn't fire**: Check `/hooks`, verify matcher case, restart session after config changes
- **JSON parsing errors**: Guard `.zshrc` echo statements with `[[ $- == *i* ]]` interactive check
- **Stop hook infinite loop**: Check `stop_hook_active` field to break the cycle

## Book Reference

See Chapter 13 of *Claude Code Cookbook* for the full recipe.
