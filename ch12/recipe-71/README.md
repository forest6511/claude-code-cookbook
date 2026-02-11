# Recipe 71: Shared Task Lists and Dependency Management

Coordinating teammate work manually is tedious. Tasks need dependency tracking and automatic sequencing.

## Quick Reference

### Task states

```text
Task states:
  pending      Not started (blocked if
               dependencies are incomplete)
  in_progress  Being worked on
  completed    Done

Dependencies:
  If Task B depends on Task A, Task B can't
  be claimed until Task A completes.
  Unblocking is automatic.
```

### Create tasks with dependencies

```text
> Create these tasks with dependencies:
>
> 1. Design database schema (no deps)
> 2. Implement API endpoints (depends on 1)
> 3. Implement validation logic (depends on 1)
> 4. Build frontend forms (depends on 2)
> 5. Write E2E tests (depends on 2, 4)
> 6. Update documentation (depends on 2, 3, 4)
>
> Tasks 2 and 3 can start in parallel after
> task 1 completes.
```

### Assignment patterns

```text
Leader-assigned:
  Leader assigns tasks to specific teammates
  -> Use when clear responsibility matters

Self-claim:
  Teammates pick up unassigned tasks on completion
  -> Use for flexible work distribution
  -> File locking prevents race conditions
```

### Monitor the task list

```text
# In-process mode
Ctrl+T  Toggle task list display

# Via the leader
> "Show the task list"
> "Assign task 3 to the backend teammate"
> "Check task 2 status"
```

## Book Reference

See Chapter 12 of *Claude Code Cookbook* for the full recipe.
