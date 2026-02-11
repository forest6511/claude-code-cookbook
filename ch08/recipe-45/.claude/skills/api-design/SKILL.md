---
name: api-design
description: Design a REST API and generate an OpenAPI 3.1 spec. Use for new APIs or documenting existing endpoints.
argument-hint: [resource-name or file-path]
disable-model-invocation: true
allowed-tools: Read, Write, Edit, Glob, Grep
---

# API Design & OpenAPI Generation

## Target
$ARGUMENTS

## Phase 1: Resource Design

Define the resource:
- Resource name (plural English noun)
- Attributes (type, required/optional, validation)
- Relationships to other resources

### Endpoint Template

| Method | Path | Description | Response |
|--------|------|-------------|----------|
| GET | /resources | List | 200: array |
| GET | /resources/:id | Detail | 200/404 |
| POST | /resources | Create | 201/400 |
| PUT | /resources/:id | Update | 200/404 |
| DELETE | /resources/:id | Delete | 204/404 |

### Design Principles
- RESTful (resource-oriented, stateless)
- Consistent naming (kebab-case paths, camelCase fields)
- Standard HTTP status codes
- Pagination, filtering, and sorting patterns

## Phase 2: OpenAPI 3.1 Spec Generation

Generate a YAML file with:
- info (title, version, description)
- paths (all endpoints)
- components/schemas (request/response schemas)
- components/responses (standard error format)

### Standard Error Format

    {
      "error": {
        "code": "RESOURCE_NOT_FOUND",
        "message": "The requested resource was not found"
      }
    }

## Phase 3: Output

1. Save the OpenAPI 3.1 spec as YAML
2. Display a summary of design decisions
