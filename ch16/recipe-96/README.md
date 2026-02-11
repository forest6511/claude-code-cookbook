# Recipe 96: Keyboard Shortcuts and Vim Mode

You're reaching for the mouse or arrow keys constantly while working in Claude Code. Mode switching, history navigation, and prompt editing feel slower than they should.

## Quick Reference

### Essential Shortcuts

```text
Ctrl+C         Cancel generation mid-stream
Ctrl+L         Clear screen (keeps history)
Shift+Tab      Cycle permission modes
               (Normal -> Auto-Accept -> Plan)
Ctrl+R         Reverse search command history
Ctrl+G         Open prompt in external editor
Esc Esc        Rewind / summarize
```

### Model and Task Control

```text
Cmd+P / Meta+P   Switch model
Cmd+T / Meta+T   Toggle extended thinking
Ctrl+T            Toggle task list
Ctrl+B            Background running command
Ctrl+V            Paste image from clipboard
Ctrl+O            Toggle verbose output
```

### Multiline Input

```text
\  + Enter      Works in all terminals
Option+Enter    macOS default terminal
Shift+Enter     iTerm2, WezTerm, Ghostty, Kitty
Paste mode      Paste multi-line text directly
```

### Quick Prefixes

```text
/command    Run a slash command or Skill
!command    Run bash directly (adds to context)
@path       Add a file or directory to context
```

### Vim Mode

Enable: `/vim` or permanently via `/config`

```text
Movement:  h/j/k/l  w/b/e  0/$/^  gg/G
Find:      f{char}  t{char}  ;  ,
Edit:      dd  cc  dw  cw  yy  p  .
Objects:   iw  aw  i"  a"  i(  a(  i{  a{
Switch:    i/I  a/A  o/O  -> Insert mode
           Esc         -> Normal mode
```

## Book Reference

See Chapter 16 of *Claude Code Cookbook* for the full recipe.
