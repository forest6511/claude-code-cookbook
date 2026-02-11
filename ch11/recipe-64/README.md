# Recipe 64: Prompt Chaining with Intermediate Gates

Multi-step workflows (analyze, plan, implement, verify) need quality checkpoints between steps, but sub-agents can't be nested.

## Quick Reference

### Gate types

```text
Auto gate: Pass results directly to next step
  -> For routine workflows

Confirmation gate: Present results, wait for
  user approval
  -> For critical decision points

Conditional gate: Choose next step based on
  results
  -> For error handling and branching
```

### Confirmation gate example

```text
> Execute this workflow step by step.
> Check results before proceeding.
>
> Step 1 (Analyze):
>   Use an Explore sub-agent to analyze
>   error handling in src/api/
>
> Step 2 (Plan):
>   Draft a unified error handling design
>   -> Show me the design for approval
>
> Step 3 (Implement):
>   After approval, implement the shared
>   error handling module
>
> Step 4 (Verify):
>   Run all tests, confirm no regressions
```

### Conditional gate example

```text
> After Step 3, run tests.
>
> If all tests pass -> proceed to Step 4
> If 1-3 tests fail -> fix failures, retest
> If 4+ tests fail -> revert and report
```

### Resume for long-running chains

```text
Session 1:
  Steps 1-2 complete -> Agent ID: agent-xyz

Session 2:
  "Resume the previous analysis and proceed
  to Step 3 implementation"
  -> Resumes agent-xyz with full context
```

## Book Reference

See Chapter 11 of *Claude Code Cookbook* for the full recipe.
