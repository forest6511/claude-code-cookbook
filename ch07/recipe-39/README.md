# Recipe 39: Safely Adopting Third-Party Skills

Writing Skills from scratch takes time. You want to use official samples and community Skills, but you need to do it safely.

## Quick Reference

### Install from Official Marketplace

```text
> /plugin
> /plugin install plugin-name@claude-plugins-official
```

### Add Third-Party Marketplace

```text
> /plugin marketplace add owner/repo
> /plugin install plugin-name@marketplace-name
```

### Copy from Repository

```bash
git clone https://github.com/anthropics/skills.git /tmp/anthropic-skills
cp -r /tmp/anthropic-skills/skills/code-review .claude/skills/code-review
rm -rf /tmp/anthropic-skills
```

### Security Checklist

Before using any third-party Skill, inspect it:

```bash
# Read the full SKILL.md
cat .claude/skills/code-review/SKILL.md

# Check for broad tool permissions
grep -r "allowed-tools" .claude/skills/code-review/

# Check for shell command injection
grep -r '!`' .claude/skills/code-review/
```

### Evaluation Criteria

- Conforms to the Agent Skills standard (agentskills.io)
- `allowed-tools` scoped to minimum necessary
- License is clearly stated (MIT, Apache 2.0)
- Repository is actively maintained (check last commit date)

## Book Reference

See Chapter 7 of *Claude Code Cookbook* for the full recipe.
