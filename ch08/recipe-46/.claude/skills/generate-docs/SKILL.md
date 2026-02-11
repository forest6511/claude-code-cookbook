---
name: generate-docs
description: Add JSDoc, docstrings, or type annotations to code
argument-hint: [file-or-directory]
disable-model-invocation: true
allowed-tools: Read, Write, Edit, Glob, Grep
---

# Code Documentation Generator

## Target
$ARGUMENTS

## What to Document
- Exported functions, classes, methods, types
- Complex logic (3+ branches, algorithms)

## What to Skip
- Private trivial functions (obvious getters)
- Functions that already have docs (don't overwrite)

## TypeScript/JavaScript Format

    /**
     * Validates the user's authentication token
     * @param token - JWT token string
     * @returns Decoded user info, or null if invalid
     * @throws {TokenExpiredError} If token has expired
     */

## Python Format

    def validate_token(token: str) -> Optional[UserInfo]:
        """Validate the user's authentication token.

        Args:
            token: JWT token string

        Returns:
            Decoded user info, or None if invalid

        Raises:
            TokenExpiredError: If token has expired
        """

## Quality Rules
- First sentence summarizes what the function does
- Specify parameter types and constraints
- Document return value meaning and type
- List exceptions and error cases
- Write from the caller's perspective, not the implementation's
