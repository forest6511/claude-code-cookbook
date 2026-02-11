---
name: generate-readme
description: Generate or update the project README.md from source code analysis
disable-model-invocation: true
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(npm *), Bash(node *)
---

# README Generation

## Project Info
- package.json: !`cat package.json 2>/dev/null || echo "None"`
- Structure: !`ls -la src/ 2>/dev/null || ls -la`

## README Structure

    # Project Name

    Description (2-3 lines)

    ## Prerequisites
    - Required runtimes and tools

    ## Setup
    1. Installation steps
    2. Environment variables
    3. How to start

    ## Usage
    Key usage instructions

    ## Project Structure
    Directory layout explanation

    ## License

## Rules
- If README.md exists, preserve and supplement
- Only document what the code confirms
- Setup steps must use accurate, working commands
