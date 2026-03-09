# AT Medical Repository Map

This document describes the intended role of the main repositories in the AT Medical GitHub organization.

## Core Repositories

### `.github`
Central organization repository for shared templates, governance defaults, GitHub workflows, issue templates, pull request templates, Copilot instructions, and repository-wide operational standards.

### `ATMED-assets`
Central repository for AT Medical branding assets including logos, icons, color palettes, and static media resources used across all repositories and platforms.

### `ATMED-docs`
Repository for formal technical documentation, governance standards, architecture descriptions, operational procedures, implementation notes, and long-form project documentation.

### `ATMED-devops`
Repository for CI/CD workflows, automation logic, repository maintenance workflows, deployment workflows, and operational GitHub automation.

### `ATMED-infrastructure`
Core infrastructure repository for server architecture, Docker stacks, deployment structure, reverse proxy setup, authentication services, networking, backup concepts, monitoring, and infrastructure governance.

### `ATMED-web`
Main repository for public-facing websites, landing pages, frontend assets, static web components, contact flows, and related web presentation logic.

### `ATMED-sandbox`
Sandbox and demonstration environment for testing GitHub workflows, configurations and repository structures. Not used in production.

> **Rename required:** `demo-repository` must be renamed to `ATMED-sandbox`. This rename cannot be executed automatically and must be performed manually via GitHub repository settings.

---

## Business-Area Repositories

### `DIG-prescriptcheck`
AI-assisted prescription validation and fraud detection platform for medical and pharmaceutical workflows.

> **Rename required:** `PrescriptCheck` must be renamed to `DIG-prescriptcheck`. This rename cannot be executed automatically and must be performed manually via GitHub repository settings. All content remains intact.

### `DIG-respondai`
AI-powered emergency response coordination and decision support system for disaster medicine and mass casualty incidents.

### `DIG-cognicore`
Interactive digital learning and communication platform for medical education, conferences and hybrid teaching environments.

### `DIG-revivation`
Digital tools for resuscitation training, physiological simulation and emergency medicine education.

### `RES-matrex`
Research platform for predictive risk scoring models in intensive care medicine and critical care monitoring.

### `RES-metaboliq`
Research platform investigating metabolic regulation, mitochondrial function and nutritional optimization.

### `RES-novablood`
Research project exploring artificial oxygen carriers and next-generation blood substitute technologies.

### `ACA-elearning`
Core repository for the AT Medical Academy digital learning ecosystem including Moodle integration and course infrastructure.

---

## Repository Prefix Conventions

| Prefix | Domain | Type |
|--------|--------|------|
| `ATMED-` | Core infrastructure | Platform / Governance |
| `DIG-` | Digital products | Software / AI |
| `RES-` | Research projects | Research / Data |
| `ACA-` | Academy / Education | Learning platform |

---

## Repository Boundaries

Copilot and contributors should respect repository boundaries.

### Infrastructure code belongs in:
- `ATMED-infrastructure`
- `ATMED-devops` (for CI/CD or operational automation)

### Web platform code belongs in:
- `ATMED-web`

### Branding and media assets belong in:
- `ATMED-assets`

### Formal documentation belongs in:
- `ATMED-docs`
- or shared governance files in `.github`

### Digital product code belongs in:
- `DIG-prescriptcheck`
- `DIG-respondai`
- `DIG-cognicore`
- `DIG-revivation`

### Research code and data belong in:
- `RES-matrex`
- `RES-metaboliq`
- `RES-novablood`

### Academy / e-learning code belongs in:
- `ACA-elearning`

### Experimental sandbox code belongs in:
- `ATMED-sandbox`

---

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
- consistent naming prefix per domain
