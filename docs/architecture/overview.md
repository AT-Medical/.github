# Architecture Overview

## Purpose

The AT Medical GitHub organization serves as the central coordination layer for all technical work across the organization. This document describes the high-level architecture of the GitHub platform itself — how repositories, workflows, and governance structures are organized.

## Repository Topology

The organization groups repositories by domain:

| Domain | Description |
|---|---|
| Infrastructure | VPS, Docker, networking, reverse proxy, authentication |
| Web | Public websites, landing pages, frontend components |
| Academy | E-learning, Moodle, course delivery, educational assets |
| Tools | Internal utilities, scripts, operational helpers |
| Research | Prototypes, experimental implementations |
| Governance | Policies, standards, templates, architecture docs |

The `.github` repository (this repository) is the root governance repository. It defines organization-wide standards, templates, and reusable workflows.

## Workflow Architecture

All repositories follow a branch-based pull-request workflow:

```
feature branch → pull request → review → merge into main
```

Direct commits to protected branches are not permitted in the standard workflow.

## CI/CD Architecture

Reusable workflows are defined in `.github/workflows/reusable-ci.yml` and called by individual repository `ci.yml` workflows. This pattern reduces duplication and centralizes CI logic.

Key workflows in this repository:

| Workflow | Trigger | Purpose |
|---|---|---|
| `ci.yml` | push, pull_request | Runs the reusable CI pipeline |
| `reusable-ci.yml` | workflow_call | Reusable CI steps (install, build, test) |
| `security-scan.yml` | push, PR, schedule | Secret scanning, dependency review |
| `security.yml` | push, PR, schedule | Basic security structure checks |
| `compliance-check.yml` | push, PR, schedule | License and compliance validation |
| `codeql.yml` | push, PR, schedule | Static code analysis |
| `repo-guard.yml` | push, PR | Repository structure guard |

## Governance Architecture

Governance is enforced through:

- `CODEOWNERS` – mandatory reviewer assignment
- `SECURITY.md` – responsible disclosure policy
- `CONTRIBUTING.md` – contribution standards
- `CODE_OF_CONDUCT.md` – community standards
- Branch protection rules (configured via GitHub settings)
- Dependabot (`.github/dependabot.yml`) for dependency updates

## Security Architecture

See [`docs/security/security-model.md`](../security/security-model.md) for the full security model.

## Related Documents

- [`ARCHITECTURE.md`](../../ARCHITECTURE.md) – Platform-level architecture narrative
- [`DECISIONS.md`](../../DECISIONS.md) – Architecture decision log
- [`REPOSITORY_MAP.md`](../../REPOSITORY_MAP.md) – Repository responsibility map
