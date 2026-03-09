# Security Model

## Purpose

This document describes the security model applied across the AT Medical GitHub organization. It covers access controls, secrets management, vulnerability scanning, and the responsible disclosure process.

## Core Security Principles

1. **Security before convenience** – Security controls are not bypassed for operational efficiency.
2. **Least privilege** – Workflows and integrations are granted only the permissions they require.
3. **No secrets in code** – Credentials, tokens, API keys, and certificates are never committed to repositories.
4. **Pull-request gating** – All changes to protected branches require review before merge.
5. **Automated scanning** – Security issues are caught automatically through CI/CD pipelines.

## Access Controls

| Layer | Control |
|---|---|
| Repository access | GitHub organization membership and role assignment |
| Branch protection | Protected `main` branch — no direct push |
| Code review | CODEOWNERS enforce mandatory reviewer assignment |
| Workflow permissions | Minimal `permissions:` blocks in all workflow files |

## Secrets Management

All secrets must be stored in:

- **GitHub Repository Secrets** – for repository-scoped credentials
- **GitHub Organization Secrets** – for organization-wide credentials
- **GitHub Environments** – for environment-scoped credentials (development, staging, production)

Secrets must never appear in:

- source code
- workflow run logs
- commit messages
- pull request descriptions
- documentation (even as examples — use placeholder notation instead)

## Vulnerability Scanning

The following automated scans are active:

| Scan | Tool | Schedule |
|---|---|---|
| Secret detection | Gitleaks | Every push and PR |
| Dependency review | `dependency-review-action` | Every PR |
| Static analysis | CodeQL | Every push, PR, and weekly |
| Security structure | Custom shell checks | Every push and PR |
| License compliance | `compliance-check.yml` | Every push, PR, and weekly |

## Responsible Disclosure

Security vulnerabilities must be reported privately. Do not open public GitHub issues for security matters.

Contact: **security@at-medical.de**

See [SECURITY.md](../../SECURITY.md) for the full responsible disclosure policy.

## Gitleaks Configuration

The `.gitleaks.toml` file at the repository root customizes secret detection. The current configuration:

- extends the default Gitleaks ruleset
- allowlists Markdown files and LICENSE files (to avoid false positives on documentation examples)
- allowlists common placeholder patterns such as `exampletoken`, `changeme`, and `dummy`

## Dependency Updates

Dependabot is configured (`.github/dependabot.yml`) to automatically scan and update:

- GitHub Actions dependencies
- npm dependencies
- Docker dependencies

Updates are proposed as pull requests and require review before merging.

## Incident Response

In the event of a confirmed security vulnerability:

1. The vulnerability is assessed for impact and scope.
2. A fix is developed in a private branch.
3. The fix is reviewed and tested.
4. A patched release is published.
5. A security advisory is issued where appropriate.

## Related Documents

- [`SECURITY.md`](../../SECURITY.md) – Public-facing security policy and responsible disclosure
- [`docs/architecture/overview.md`](../architecture/overview.md) – Architecture overview including workflow security controls
