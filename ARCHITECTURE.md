# AT Medical Architecture Overview

This document provides a high-level overview of the AT Medical GitHub organization and platform architecture.

## Purpose

AT Medical uses GitHub as the central coordination layer for infrastructure, web platforms, academy systems, internal tools, automation, and documentation.

The goal is to maintain a structured, secure, and scalable technical ecosystem.

## Core Principles

- security before convenience
- explicit changes only
- no automatic unrelated refactoring
- protected main branches
- pull-request-based workflow
- documentation-first infrastructure
- configuration over hardcoding

## Platform Domains

The AT Medical platform currently consists of multiple technical domains:

### 1. Infrastructure
Infrastructure repositories contain server, Docker, deployment, reverse proxy, authentication, and networking logic.

Typical topics:
- VPS infrastructure
- Docker Compose
- reverse proxy
- TLS
- authentication
- monitoring
- backup and restore
- deployment workflows

### 2. Web
Web repositories contain websites, landing pages, static and dynamic frontend assets, and platform-facing web services.

Typical topics:
- public websites
- landing pages
- microsites
- frontend components
- HTML, CSS, JavaScript
- contact forms
- SEO and analytics integration

### 3. Academy / Learning
Academy repositories contain e-learning, Moodle-related logic, educational assets, and digital course platform components.

Typical topics:
- Moodle
- academy workflows
- course delivery
- educational assets
- learning support tools
- webinar and teaching integrations

### 4. Digital Products (DIG-)
Digital product repositories contain AI-assisted applications, clinical decision support tools, and digital health platforms.

Typical topics:
- AI-assisted prescription validation (DIG-prescriptcheck)
- emergency response coordination (DIG-respondai)
- digital learning and conference platforms (DIG-cognicore)
- resuscitation training and simulation (DIG-revivation)

### 5. Research (RES-)
Research repositories contain scientific experiments, data models, predictive risk scoring, and evidence-based research projects.

Typical topics:
- predictive risk scoring models (RES-matrex)
- metabolic regulation research (RES-metaboliq)
- artificial oxygen carrier research (RES-novablood)
- datasets and analysis scripts
- research documentation

### 6. Tools / Internal Services
Tool repositories contain internal utilities, scripts, helper services, automation helpers, and operational support tools.

Typical topics:
- utility scripts
- helper tools
- admin helpers
- import/export tools
- maintenance scripts
- operational automation

### 7. Documentation / Governance
Documentation repositories contain policies, standards, architecture descriptions, governance documents, workflows, and operational knowledge.

Typical topics:
- architecture documentation
- contribution rules
- security guidance
- technical standards
- organizational templates
- workflows and conventions

## Workflow Model

All important repositories follow this workflow model:

1. create a feature branch
2. open a pull request
3. run automated checks where available
4. perform review
5. merge into main

Direct commits to protected branches are not part of the normal workflow.

## Security Model

Security rules apply across the organization:

- never commit secrets
- never hardcode credentials
- prefer environment variables and secret stores
- use protected branches
- use pull requests for sensitive changes
- keep changes small and reviewable

## Copilot Expectations

GitHub Copilot should treat this organization as a structured multi-repository platform.

Copilot should:
- respect repository boundaries
- avoid changing unrelated components
- prefer explicit and minimal changes
- avoid guessing infrastructure details
- rely on documented architecture where available
- treat security and maintainability as first-class requirements

## Documentation Strategy

This file provides the high-level architecture layer.

More specific repository details are documented separately in:
- REPOSITORY_MAP.md
- repository-specific README files
- repository-specific docs folders
