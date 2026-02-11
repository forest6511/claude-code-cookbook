# Recipe 76: Map-Reduce and Voting Patterns

You need to process many files in parallel and aggregate results, or get multiple independent perspectives on a decision.

## Quick Reference

### Map-Reduce pattern

```text
> Analyze all TypeScript files in src/ for
> type safety issues. Split the work:
>
> 1. Sub-agent 1: src/api/ + src/services/
> 2. Sub-agent 2: src/components/ + src/hooks/
> 3. Sub-agent 3: src/utils/ + src/types/
>
> Each sub-agent reports issues found.
> Then aggregate and prioritize all results.
```

### Voting pattern

```text
> Investigate this bug's root cause.
> Create a team with 5 teammates, each
> investigating a different hypothesis.
>
> Have them challenge each other's theories.
> The hypothesis that survives debate is
> the most likely root cause.
```

### Combined pattern

```text
Phase 1 (Map): 3 sub-agents investigate
  different modules independently
Phase 2 (Voting): 3 sub-agents create
  independent refactoring plans
Phase 3 (Reduce): Main synthesizes voting
  results into a final plan
```

### Practical guidelines

- 3-5 chunks for Map-Reduce
- 3 agents for Voting
- Each result returns to main context -- too many agents overwhelm it
- Use Map-Reduce for automated code fixes: detect per module, then prioritize repairs
- Use Voting for design decisions: adopt elements that multiple agents converge on
- In CI/CD, use Voting for quality gates: "approve only if 2 of 3 reviewers agree"

## Book Reference

See Chapter 12 of *Claude Code Cookbook* for the full recipe.
