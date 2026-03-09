# Deployment

## Purpose

This document describes deployment conventions and processes for the AT Medical GitHub organization platform. It covers branch strategy, environment promotion, and workflow-based release management.

## Branch Strategy

| Branch | Purpose | Protected |
|---|---|---|
| `main` | Production-ready state | Yes |
| `develop` | Integration branch for features | Recommended |
| `staging` | Pre-production validation | Recommended |
| `feat/*` | Feature development branches | No |
| `fix/*` | Bug fix branches | No |
| `chore/*` | Maintenance branches | No |

## Environment Promotion

Changes are promoted through environments in the following order:

```
feature branch → develop → staging → main
```

Direct promotion from a feature branch to `main` is only permitted for documentation-only changes with explicit code owner approval.

## Deployment Triggers

| Event | Target | Action |
|---|---|---|
| Push to `main` | Production | CI run; deployment where applicable |
| Push to `staging` | Staging | CI run; pre-production validation |
| Push to `develop` | Development | CI run |
| Pull request | Any | CI checks, security scans, review gates |

## CI/CD Pipelines

Pipelines are defined as GitHub Actions workflows in `.github/workflows/`. The standard pipeline sequence for a pull request is:

1. Checkout
2. Dependency installation (if applicable)
3. Lint (if configured)
4. Tests (if configured)
5. Security scan (secret detection, dependency review)
6. Compliance check
7. Code owner review
8. Merge

## Release Management

Releases are tracked in [`CHANGELOG.md`](../../CHANGELOG.md). For repositories that publish releases:

1. Update `CHANGELOG.md` with the new version and changes.
2. Create a GitHub Release from the `main` branch.
3. Tag the release with a semantic version (e.g., `v1.2.0`).

## Secrets and Configuration

Environment-specific secrets are managed through GitHub Environments. See [`docs/security/security-model.md`](../security/security-model.md) for secrets management policy.

No secrets or environment-specific values are hardcoded in workflow files or application code.

## Related Documents

- [`docs/architecture/overview.md`](../architecture/overview.md) – CI/CD architecture overview
- [`CHANGELOG.md`](../../CHANGELOG.md) – Release history
