# Recipe 04: CLAUDE.md Strategy for Monorepos

Your monorepo contains a frontend, a backend, and shared libraries — each with different tech stacks. A single `CLAUDE.md` can't efficiently serve all of them without bloating the context.

## Files

- `CLAUDE.md` — Root monorepo CLAUDE.md with shared tech, commands, and rules (Turborepo)
- `packages/web/CLAUDE.md` — Frontend package CLAUDE.md (Next.js 15 + Tailwind + Zustand)
- `packages/api/CLAUDE.md` — Backend package CLAUDE.md (Express + Prisma + PostgreSQL)

## Book Reference

See Chapter 1 of *Claude Code Cookbook* for the full recipe.
