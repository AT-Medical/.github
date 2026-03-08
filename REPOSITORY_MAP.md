# AT Medical Repository Map

This document describes the intended role of the main repositories in the AT Medical GitHub organization.

## Organizational Role of Repositories

### `.github`
Central organization repository for shared templates, governance defaults, GitHub workflows, issue templates, pull request templates, Copilot instructions, and repository-wide operational standards.

### `ATMED-infrastructure`
Core infrastructure repository for server architecture, Docker stacks, deployment structure, reverse proxy setup, authentication services, networking, backup concepts, monitoring, and infrastructure governance.

### `ATMED-web`
Main repository for public-facing websites, landing pages, frontend assets, static web components, contact flows, and related web presentation logic.

### `ATMED-devops`
Repository for CI/CD workflows, automation logic, repository maintenance workflows, deployment workflows, and operational GitHub automation.

### `ATMED-tools`
Repository for internal helper tools, scripts, import/export utilities, maintenance helpers, administrative tools, and reusable operational support code.

### `ATMED-academy`
Repository for academy-related platform elements, e-learning integrations, Moodle-related assets or code, educational delivery logic, and learning platform support services.

### `ATMED-research`
Repository for prototypes, experiments, proof-of-concept implementations, AI-assisted innovation projects, and research-driven technical concepts.

### `ATMED-docs`
Repository for formal technical documentation, governance standards, architecture descriptions, operational procedures, implementation notes, and long-form project documentation.

## Repository Boundaries

Copilot and contributors should respect repository boundaries.

### Infrastructure code belongs in:
- `ATMED-infrastructure`
- `ATMED-devops` (for CI/CD or operational automation)

### Web platform code belongs in:
- `ATMED-web`

### Learning platform code belongs in:
- `ATMED-academy`

### Utility scripts belong in:
- `ATMED-tools`

### Experimental code belongs in:
- `ATMED-research`

### Formal documentation belongs in:
- `ATMED-docs`
- or shared governance files in `.github`

## Change Discipline

When modifying any repository:

- only change what is explicitly requested
- do not move logic between repositories unless requested
- do not create cross-repository assumptions without documentation
- do not duplicate architecture decisions inconsistently
- prefer documenting assumptions when uncertain

## Security and Operational Rules

All repositories should assume:

- protected main branch
- pull-request workflow
- no secrets in code
- no hardcoded credentials
- minimal and reviewable commits
- documentation for structural changes

## Future Growth

This repository map is expected to evolve.

New repositories should follow the same model:
- clear responsibility
- minimal overlap
- explicit documentation
- security-aware defaults
