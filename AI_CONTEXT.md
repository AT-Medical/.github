# AI_CONTEXT.md
## AT Medical GmbH® – Central AI Context for GitHub Copilot and Repository Agents

This file provides the authoritative high-level context for GitHub Copilot, AI code reviewers, repository agents, and future automation tools working inside the AT Medical GmbH® GitHub organization.

Its purpose is to ensure that AI systems understand the platform architecture, repository responsibilities, infrastructure standards, security boundaries, workflow expectations, and implementation philosophy before suggesting, generating, or modifying code.

This document is intentionally detailed and should be treated as a primary context source.

---

# 1. Identity and Organizational Context

AT Medical GmbH® is a structured digital ecosystem focused on:

- medical education
- digital health infrastructure
- clinical support tooling
- research and innovation
- healthcare-oriented web platforms
- automation and internal operational tools

The GitHub organization is used as the central technical coordination layer for all software, infrastructure, architecture, governance, and operational documentation.

GitHub is not just a code host.  
It is the authoritative planning, documentation, review, and automation environment for the AT Medical GmbH® technical platform.

AI systems working in this environment must behave accordingly.

---

# 2. Mission of the Platform

The technical ecosystem of AT Medical GmbH® is intended to support a broad medical and educational infrastructure that includes:

- websites and landing pages
- educational platforms
- Moodle-related systems
- WordPress-based web services
- membership and e-learning logic
- digital tools and calculators
- research prototypes
- automation pipelines
- server and deployment infrastructure
- documentation and governance

The long-term goal is to build a coherent, secure, maintainable, and scalable technical system instead of disconnected single projects.

Therefore, all AI-generated code, configuration, and architecture suggestions must support:

- consistency
- maintainability
- reviewability
- security
- explicitness
- modular separation of concerns

---

# 3. Core Working Principles

AI systems must follow these principles in all repositories.

## 3.1 Explicit changes only

Only perform the explicitly requested change.

Do not:

- refactor unrelated code
- rename unrelated variables
- reformat unrelated files
- move files without instruction
- replace entire architectures without instruction
- “improve” unrelated parts automatically

If further improvements are detected, propose them separately instead of applying them silently.

## 3.2 Security before convenience

Security takes priority over convenience.

Never introduce or expose:

- API keys
- passwords
- tokens
- internal access credentials
- certificates
- private URLs
- secret environment values

Never commit secrets into repositories.

Always prefer:

- environment variables
- example files such as `.env.example`
- documented placeholders
- secret stores
- deployment-time secret injection

## 3.3 Documentation is part of implementation

Structural changes, infrastructure changes, and architectural additions must be documented.

New components should not appear “out of nowhere.”
They must be explained.

## 3.4 Keep repository boundaries clean

Repositories in this organization have explicit responsibilities.

AI must not casually move responsibilities across repositories.

Infrastructure must not drift into web repositories.  
Web content must not drift into infrastructure repositories.  
Experimental code must not silently become production infrastructure.

## 3.5 Small, reviewable change sets

Changes should be:

- small
- atomic
- understandable
- reviewable
- reversible if needed

AI should prefer multiple small commits or PR-sized change groups over giant monolithic drops.

---

# 4. Global GitHub Workflow Expectations

The organization follows a pull-request-based workflow.

Protected `main` branches are used.

Normal workflow:

1. create a feature branch
2. implement a scoped change
3. open a pull request
4. review the pull request
5. merge into `main`

Direct commits to protected branches are not part of the normal workflow.

AI must assume that:

- `main` is protected
- pull requests are required
- reviews are expected
- changes should be branch-safe
- mergeability matters

When generating commit messages, PR text, or suggested change sets, AI should keep this workflow in mind.

---

# 5. Repository Landscape and Responsibilities

The AT Medical GmbH® GitHub organization uses multiple repositories with clearly defined roles.

## 5.1 `.github`

Purpose:
Central organization repository for shared GitHub defaults, templates, governance files, instructions, issue templates, pull request templates, organizational context, and AI guidance.

Typical contents:
- organizational README
- issue templates
- pull request templates
- Copilot instruction files
- AI context files
- governance and policy defaults

AI guidance:
This repository is the global coordination layer.
Files here should be treated as organization-wide standards unless explicitly stated otherwise.

## 5.2 `ATMED-infrastructure`

Purpose:
Core infrastructure repository for the technical backbone of the platform.

Expected topics:
- Docker stacks
- Traefik
- reverse proxy architecture
- authentication and identity components
- networks
- server filesystem conventions
- deployment conventions
- monitoring
- backup strategy
- restore strategy
- infrastructure docs
- env templates
- stack templates

AI guidance:
This repository defines how the platform is hosted and operated.
It is the technical backbone and should remain disciplined, infrastructure-focused, and security-aware.

## 5.3 `ATMED-devops`

Purpose:
Repository for CI/CD, GitHub Actions, deployment automation, reusable automation workflows, operational scripts, and repository maintenance logic.

Expected topics:
- GitHub Actions workflows
- reusable workflow templates
- deployment automation
- validation logic
- helper scripts
- release automation
- repo maintenance

AI guidance:
This repository is automation-focused.
It should not become a dumping ground for application code.
Changes must be operationally justified.

## 5.4 `ATMED-web`

Purpose:
Repository for websites, landing pages, frontend assets, and public-facing web platform code.

Expected topics:
- static websites
- HTML/CSS/JS pages
- shared frontend assets
- landing pages
- forms and frontend web flows
- WordPress-adjacent web presentation layers

AI guidance:
This repository owns presentation logic and public-facing web content.
It should not become infrastructure-heavy.

## 5.5 `ATMED-academy`

Purpose:
Repository for educational platform logic, Moodle-related structures, academy workflows, and learning system support.

Expected topics:
- Moodle-related configurations or integration logic
- academy services
- educational workflow support
- e-learning-related architecture
- course-related automation

AI guidance:
This repository owns the learning platform domain.
It should remain distinct from generic web and infrastructure concerns.

## 5.6 `ATMED-tools`

Purpose:
Repository for internal tools, utility scripts, lightweight applications, import/export helpers, calculators, and operational helpers.

Expected topics:
- utility tools
- calculators
- admin helpers
- data transformation helpers
- maintenance tools
- browser-based standalone tools

AI guidance:
This repository should remain practical and modular.
No fake medical logic.
No overly abstract architecture for simple tools.

## 5.7 `ATMED-research`

Purpose:
Repository for prototypes, experiments, proof-of-concept systems, innovation work, and research-oriented technical concepts.

Expected topics:
- prototypes
- experimental algorithms
- early-stage concepts
- AI-assisted ideas
- research-driven feasibility work

AI guidance:
This repository is allowed to be exploratory, but still structured.
Prototypes should be clearly labeled as prototypes.
Do not confuse research code with production code.

## 5.8 `ATMED-docs`

Purpose:
Central documentation repository for long-form architecture, governance, standards, documentation, operational procedures, and technical knowledge.

Expected topics:
- standards
- governance
- architecture documents
- technical notes
- decisions
- implementation guides
- long-form documentation

AI guidance:
This is the formal documentation backbone.
When in doubt about long-form explanation, architecture narratives, or standards, place them here.

---

# 6. Intended Platform Components

The AT Medical GmbH® ecosystem may eventually include, among others:

- WordPress-based public websites
- Moodle-based academy systems
- WordPress membership logic using MemberPress
- automation services
- contact and lead workflows
- educational content support systems
- digital health tools
- internal operational utilities
- research and prototype systems

AI must not assume that every component already exists in production.  
The correct posture is:

- prepare cleanly
- scaffold carefully
- document clearly
- avoid premature implementation assumptions

---

# 7. Infrastructure Model

## 7.1 Operating system

Primary server environment:
- Debian 13

AI should assume Linux-first server deployment.

## 7.2 Container strategy

Primary runtime:
- Docker

Primary orchestration:
- Docker Compose

Each major service should be structured as a clean, documented stack.

Persistent data must never be stored in ephemeral container layers.

## 7.3 Reverse proxy

Primary reverse proxy:
- Traefik

Traefik is the expected public ingress layer.

AI should prefer Traefik-compatible labels and documented proxy logic where relevant.

## 7.4 Databases

Primary general database:
- PostgreSQL

WordPress compatibility database:
- MariaDB

AI should not introduce arbitrary alternative database technologies without explicit instruction.

## 7.5 Identity and authentication

Primary identity provider:
- authentik

Identity and access control should be treated as structured, centralized concerns.

## 7.6 Object storage

Primary object storage:
- Cloudflare R2

Use case:
- backup targets
- object storage workflows
- potentially deploy assets or archives

## 7.7 Monitoring

Monitoring stack:
- Prometheus
- Grafana

## 7.8 DNS and edge layer

Primary edge and DNS layer:
- Cloudflare

Cloudflare should be treated as part of the standard infrastructure architecture.

---

# 8. Filesystem and Volume Strategy

Server root strategy:

`/srv/atmed/`

Expected layout:

- `/srv/atmed/stacks/`
- `/srv/atmed/volumes/`
- `/srv/atmed/configs/`
- `/srv/atmed/secrets/`
- `/srv/atmed/logs/`
- `/srv/atmed/backups/`

AI should keep this model in mind when generating infrastructure documentation, deployment files, stack examples, or filesystem references.

Rules:

- persistent data goes into volumes
- reusable configuration goes into configs
- secrets are not stored in git
- backups are explicit and documented
- logs are separated
- stacks are grouped intentionally

---

# 9. Network Model

The platform uses a controlled Docker networking model.

Typical networks:

- `atmed_proxy`
- `atmed_internal`
- `atmed_database`
- `atmed_monitoring`

AI should not casually invent many extra networks unless justified.

Expected principle:

- only the reverse proxy is publicly exposed
- internal services remain internal
- databases are isolated
- monitoring is separated where appropriate

If proposing additional networks, AI must explain why they are required.

---

# 10. Security Requirements

Security requirements apply across all repositories and all AI-generated outputs.

## 10.1 No secrets in repositories

Never commit:
- passwords
- tokens
- certificates
- private keys
- database credentials
- SMTP credentials
- API keys
- secret URLs

## 10.2 Use placeholders and templates

When configuration files are required, AI should generate:

- `.env.example`
- sample configuration files
- documented placeholders

not production values.

## 10.3 No unsafe assumptions

Do not assume:
- root access patterns
- default passwords
- open network exposure
- insecure debugging modes in production

## 10.4 Reviewability

Sensitive changes should remain:
- minimal
- documented
- understandable

## 10.5 Infrastructure changes must explain risk

If suggesting changes to:
- reverse proxy
- authentication
- network exposure
- deployment logic
- secrets handling
- backup strategy

AI must explain:
- why the change exists
- what it affects
- what the operational risk is

---

# 11. WordPress, Moodle, MemberPress, and Platform-Specific Guidance

## 11.1 WordPress

WordPress is expected as part of the web platform domain.

Repository responsibility:
- web presentation and web platform concerns belong in `ATMED-web`
- shared underlying hosting and stack infrastructure belongs in `ATMED-infrastructure`

WordPress should be treated as:
- containerized
- maintainable
- configurable
- separated from secrets
- documented

AI should not hardcode plugins, themes, or production-specific configuration unless explicitly instructed.

## 11.2 MemberPress

MemberPress is expected to be treated as a WordPress-integrated component, not a standalone separate service.

AI should therefore:
- treat it as an application-level extension
- not plan it as its own infrastructure stack
- keep payment integrations abstracted and documented
- prepare placeholders rather than real payment secrets

Expected payment integration targets may include:
- Stripe
- PayPal

But AI must only scaffold safe integration placeholders unless explicitly asked to implement more.

## 11.3 Moodle

Moodle belongs to the academy / learning platform domain.

Repository responsibility:
- academy-specific logic in `ATMED-academy`
- base infrastructure patterns in `ATMED-infrastructure`

Moodle should be treated as:
- containerized
- documented
- isolated in responsibility
- prepared with clean environment templates
- integrated into the same high-level infrastructure philosophy

AI should not introduce platform chaos by mixing Moodle deeply into unrelated repositories.

---

# 12. Documentation Expectations

AI-generated documentation should be:

- clear
- technically precise
- concise but sufficient
- maintainable
- structured in Markdown

When generating infrastructure or architecture content, AI should preferably explain:

1. purpose
2. repository placement
3. file location
4. technical logic
5. operational relevance

AI should avoid:
- vague marketing language
- pseudo-explanations
- overly generic filler text

---

# 13. Coding and Configuration Expectations

Generated code and configuration should follow these principles:

- explicit over clever
- readable over condensed
- modular over chaotic
- simple over overengineered
- maintainable over flashy

AI should avoid:
- unnecessary frameworks
- surprise dependencies
- magic values
- implicit behavior
- undocumented environment assumptions

Error handling should be explicit where appropriate.

---

# 14. Copilot-Specific Expectations

GitHub Copilot and related AI tools should behave as disciplined technical assistants.

They must:

- respect repository scope
- read existing architecture files first
- avoid unrelated edits
- avoid silently rewriting working structures
- prefer minimal deltas
- explain assumptions when uncertain

Copilot should not act as if it is “designing from scratch” every time.
It must treat existing architecture documents as authoritative.

Relevant context files include:

- `AI_CONTEXT.md`
- `ARCHITECTURE.md`
- `REPOSITORY_MAP.md`
- `DECISIONS.md`
- `copilot-instructions.md`
- repository-specific `README.md`
- repository-specific docs folders

If a conflict appears between code and documentation, AI should flag it rather than silently choosing one side.

---

# 15. How AI Should Respond to Requests

When asked to implement something significant, AI should first establish:

- which repository is responsible
- whether the change belongs to infrastructure, web, academy, tools, docs, or research
- which files are the right target
- whether security implications exist
- whether the change should be scaffolded or fully implemented

AI should prefer this response model:

1. brief explanation of scope
2. proposed target files
3. implementation logic
4. file generation or change proposal

For major architecture or infrastructure work, AI should not silently generate huge uncontrolled code dumps.

---

# 16. Non-Negotiable Constraints

AI must not:

- commit secrets
- change unrelated files
- bypass protected branch assumptions
- invent fake production data
- fabricate infrastructure credentials
- merge repository responsibilities arbitrarily
- silently refactor large code areas
- assume that prototypes are production-ready
- output unsafe medical advice
- present speculative architecture as already approved fact

---

# 17. Practical Default Expectations for New Work

Unless explicitly stated otherwise, new work should assume:

- protected `main` branch
- pull request workflow
- one repository = one clear responsibility
- configuration via env templates
- Docker-first service layout
- Cloudflare as edge layer
- Traefik as reverse proxy
- PostgreSQL as primary standard database
- MariaDB only where required for compatibility
- explicit documentation for structure
- security-sensitive defaults
- no production secrets in git

---

# 18. Priority Order for Technical Work

When AI is asked to help build or scaffold the platform, the preferred implementation order is:

1. infrastructure foundation
2. devops and automation foundation
3. web platform foundation
4. academy foundation
5. tools foundation
6. documentation enrichment
7. research scaffolding

This order exists to reduce architectural chaos.

---

# 19. Context Stability

This document is intended to reduce repeated explanation.

AI should treat this file as persistent context, not as disposable prompt noise.

If new repositories, infrastructure standards, or operational decisions are added, this file should be updated so that future AI work remains aligned.

---

# 20. Final Instruction to AI Systems

When working inside the AT Medical GmbH® GitHub organization:

- think structurally
- act conservatively
- document intentionally
- separate concerns strictly
- prefer small reviewable changes
- respect repository boundaries
- respect security boundaries
- treat architecture files as binding context

If uncertain, ask before acting.
If confident, still remain explicit.
If proposing change, explain why.
