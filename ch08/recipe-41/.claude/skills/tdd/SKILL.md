---
name: tdd
description: Implement a feature using strict TDD. Test-first development with Red-Green-Refactor.
argument-hint: [feature description]
disable-model-invocation: true
allowed-tools: Read, Write, Edit, Bash(npm test *), Bash(npx jest *), Bash(npx vitest *), Bash(pytest *), Bash(go test *)
---

# TDD Development Cycle

Follow the Red-Green-Refactor cycle strictly.

## Feature
$ARGUMENTS

## Phase 1: Red (Write Tests)

1. Clarify the specification
2. Write a failing test
3. Run the test — **confirm it fails**
4. Show the test output

## Phase 2: Green (Minimal Implementation)

1. Write the **minimum** code to pass the test
2. No extra implementation beyond what the test needs
3. Run the test — **confirm it passes**
4. Show the test output

## Phase 3: Refactor

1. Remove duplication
2. Improve naming
3. Run the test — **confirm it still passes**
4. Show the test output

## Rules

- Show test output after every phase
- Never advance to the next phase with failing tests
- Use the project's existing test framework and conventions
