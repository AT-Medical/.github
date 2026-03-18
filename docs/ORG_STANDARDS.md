# AT Medical Organization Standards

## Purpose

This document describes what the `AT-Medical/.github` repository provides to the organization and how other repositories inherit from it.

## What This Repository Provides

### Default Community Health Files

The following files at the root of this repository serve as organization-wide defaults. They apply automatically to any AT Medical repository that does not define its own version.

| File | Purpose |
|---|---|
| `CODE_OF_CONDUCT.md` | Community behavior standards |
| `CONTRIBUTING.md` | Contribution guidelines |
| `SECURITY.md` | Security policy and responsible disclosure |
| `PULL_REQUEST_TEMPLATE.md` | Default pull request template |

### Organization-Wide Issue Templates

Issue templates in `ISSUE_TEMPLATE/` at the root of this repository serve as org-wide defaults.

| Template | Purpose |
|---|---|
| `ISSUE_TEMPLATE/bug_report.md` | Standard bug report |
| `ISSUE_TEMPLATE/feature_request.md` | Standard feature request |
| `ISSUE_TEMPLATE/security_vulnerability.md` | Non-critical security concern report |
| `ISSUE_TEMPLATE/config.yml` | Issue template configuration and links |

### Reusable Workflows

Reusable workflows defined in `.github/workflows/` can be called from any repository in the organization using `workflow_call`.

| Workflow | Purpose |
|---|---|
| `.github/workflows/reusable-ci.yml` | Shared CI pipeline steps |
| `.github/workflows/security-scan.yml` | Security scanning (Gitleaks, CodeQL) |
| `.github/workflows/compliance-check.yml` | License and governance compliance |
| `.github/workflows/dependency-check.yml` | Dependency vulnerability scanning |

For the full list of workflows, see [`ARCHITECTURE.md`](../ARCHITECTURE.md).

### Repository Templates

Templates in `repo-templates/` provide standardized starting points for new repositories.

| File | Purpose |
|---|---|
| `repo-templates/README_TEMPLATE_PUBLIC.md` | Template for public repositories |
| `repo-templates/README_TEMPLATE_PRIVATE_PLATFORM.md` | Template for private platform repositories |
| `repo-templates/README_TEMPLATE_PRIVATE_PRODUCT.md` | Template for private product repositories |
| `repo-templates/README_TEMPLATE_SANDBOX.md` | Template for sandbox repositories |
| `repo-templates/BADGE_MATRIX.md` | Badge usage guide per repository type |
| `repo-templates/FOOTER_SNIPPET.md` | Standard HTML footer snippet |

### Configuration Templates

Templates in `templates/` provide reusable configuration fragments.

## How Other Repositories Inherit

### Community Health Files

GitHub automatically applies community health files from this repository to any repository in the `AT-Medical` organization that does not have its own version of the file.

This means:
- A repository without a `SECURITY.md` will display the org-wide `SECURITY.md` from this repository.
- A repository without a `CODE_OF_CONDUCT.md` will use the org-wide file.
- A repository without a `CONTRIBUTING.md` will use the org-wide file.

### Issue Templates

Organization-wide issue templates from `ISSUE_TEMPLATE/` apply to repositories that do not define their own templates.

### Reusable Workflows

Repositories call reusable workflows explicitly using the `uses:` key in their workflow files:

```yaml
jobs:
  security:
    uses: AT-Medical/.github/.github/workflows/security-scan.yml@main
```

### Repository Setup

When creating a new repository in the `AT-Medical` organization:

1. Copy the appropriate README template from `repo-templates/`.
2. Reference the standard footer from `repo-templates/FOOTER_SNIPPET.md`.
3. Follow the badge guidelines in `repo-templates/BADGE_MATRIX.md`.
4. Add `.editorconfig` and `.gitattributes` from this repository as a baseline.
5. Configure Dependabot following the pattern in `.github/dependabot.yml`.

## Key Governance Documents

| Document | Purpose |
|---|---|
| [`DECISIONS.md`](../DECISIONS.md) | Architecture and organizational decision log |
| [`REPOSITORY_MAP.md`](../REPOSITORY_MAP.md) | Repository responsibility map |
| [`ARCHITECTURE.md`](../ARCHITECTURE.md) | Platform architecture overview |
| [`AI_CONTEXT.md`](../AI_CONTEXT.md) | AI and Copilot context document |

## Standards and Policies

- All workflows must define minimal `permissions:` blocks.
- Secrets must never be committed — use GitHub Secrets or organization secrets.
- Protected `main` branches require pull request review before merge.
- All new repositories must include a `SECURITY.md` or rely on this org-wide default.

See [`docs/security/security-model.md`](security/security-model.md) for the full security model.
