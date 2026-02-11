# Recipe 17: Investigating Across Multiple Repositories

Your codebase spans multiple repositories (microservices, monorepo dependencies), and tracking cross-repo API contracts and dependencies is slow and manual.

## Quick Reference

### Cross-organization code search

```text
> Search for files containing "UserService"
  across our entire organization on GitHub

> Find all code in other repos that calls this
  repository's authentication API
```

### Read files from specific repositories

```text
> Show me the contents of src/routes/auth.ts
  in our-org/auth-service

> Read the OpenAPI spec from
  our-org/api-gateway and list all endpoints
```

### Cross-repository dependency analysis

```text
> Analyze API dependencies between these repos:
  - our-org/frontend
  - our-org/api-gateway
  - our-org/user-service
  - our-org/payment-service

> If user-service changes its API schema,
  which repos and files are affected?
```

### Parallel sessions for deeper investigation

```bash
# Terminal 1: main project
cd ~/projects/frontend && claude

# Terminal 2: related service
cd ~/projects/auth-service && claude
```

## Book Reference

See Chapter 3 of *Claude Code Cookbook* for the full recipe.
