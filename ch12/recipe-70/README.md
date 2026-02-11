# Recipe 70: Run Parallel Development Sessions

Developing frontend, backend, and tests sequentially in one session is slow. You want all three layers progressing simultaneously.

## Quick Reference

### Create a layer-specific team

```text
> Implement user management. Create a team:
>
> - Backend: implement REST API in src/api/
> - Frontend: build React components in
>   src/components/
> - Testing: write unit + E2E tests in tests/
>
> Workflow:
> 1. Backend defines API schema, shares with
>    frontend
> 2. Frontend implements against the schema
> 3. Testing adds tests as each layer progresses
>
> No overlapping file edits between teammates.
```

### Teammate communication

```text
Backend -> Frontend:
  "API schema defined.
   POST /api/users - {name: string, email: string}
   GET /api/users/:id - returns UserResponse"

Frontend -> Testing:
  "UserForm component ready. Please add
   validation edge case tests."
```

### Require plan approval for risky work

```text
> Require the backend teammate to get plan
> approval before implementing. Only approve
> plans that include test coverage.
```

### Key considerations

- File separation is critical -- two teammates editing the same file causes overwrites
- Three teammates mean roughly 3x token usage of a single session
- Teammates load CLAUDE.md automatically at session start

## Book Reference

See Chapter 12 of *Claude Code Cookbook* for the full recipe.
