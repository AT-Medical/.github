# Changelog

All notable changes to the AT Medical organization-wide GitHub configuration are documented here.

This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

---

## [Unreleased]

### Added

- `metadata/repository-profile.yml` – canonical repository configuration for workflows and tagging
- `metadata/tags/taxonomy.yml` – enterprise tag taxonomy with all valid dimensions and values
- `metadata/tags/rules.yml` – tag validation rules (mandatory/optional dimensions)
- `metadata/tags/examples.yml` – tagging usage examples for all repository types
- `metadata/tags/file-tags.yml` – file-level tag manifest for this repository
- `.github/workflows/ci-validation.yml` – structure, metadata, corporate identity and workflow validation
- `.github/workflows/governance-check.yml` – governance file and metadata health checks
- `.github/workflows/tag-validation.yml` – automated tag metadata validation
- `.github/workflows/file-tagging.yml` – file tag presence and consistency checks on push/PR
- `.github/workflows/dependency-check.yml` – dependency license review and action version pinning
- `.github/workflows/cleanup-weekly.yml` – weekly stale PR cleanup and artifact directory status
- `.github/workflows/repository-selfcheck.yml` – scheduled repository health self-check
- `scripts/validate/repository-selfcheck.sh` – comprehensive local repository self-check script
- `docs/governance/README.md` – governance documentation index
- `docs/operations/README.md` – operations documentation index
- `templates/README.md` – template directory index
- `status/README.md` – status directory index
- `artifacts/README.md` – artifact management directory index
- `configs/automation/` – automation configuration directory structure
- `artifacts/incoming/`, `artifacts/staged/`, `artifacts/releases/` – artifact integration directories

### Changed

- `.github/dependabot.yml` – added `compatibility` label to github-actions, npm, and docker ecosystems
- `scripts/README.md` – updated to reflect new validate/ structure and selfcheck script

### Governance

- Enterprise directory structure aligned with ATMED-infrastructure architecture
- Global tagging system implemented across metadata/
- CI/CD governance workflows cover structure, metadata, tags, dependencies, and self-check

---

## [0.9.0] – 2026-03-16 – Enterprise Standardization

### Added

- `metadata/repository-profile.yml` – Repository profile and organizational metadata
- `configs/automation/copilot/repository-purpose.yml` – Copilot context and repository purpose configuration
- `.github/ISSUE_TEMPLATE/feature_request.yml` – Feature request issue template
- `.github/ISSUE_TEMPLATE/governance_feedback.yml` – Governance feedback issue template
- `.github/PULL_REQUEST_TEMPLATE/` – Multiple pull request templates (default, governance, security)
- `.github/DISCUSSION_TEMPLATE/` – Discussion templates for governance and general topics
- `.github/workflows/doc-consistency-check.yml` – Documentation consistency validation workflow
- `Abschlussbericht_dot-github.md` – Final change summary and recommendations

### Changed

- `README.md` – Added governance, org-standard, status, and team-ownership badges; added version/verification block
- `SECURITY.md` – Fixed contact email; added version/verification block
- `CONTRIBUTING.md` – Added version/verification block
- `CODE_OF_CONDUCT.md` – Added version/verification block
- `CODEOWNERS` – Expanded with primary and secondary team assignments
- `tests/repo-check.sh` – Updated to validate new required files

---

## [0.9.0] – 2026-03-16 – Enterprise Standardization

### Added

- `metadata/repository-profile.yml` – Repository profile and organizational metadata
- `configs/automation/copilot/repository-purpose.yml` – Copilot context and repository purpose configuration
- `.github/ISSUE_TEMPLATE/feature_request.yml` – Feature request issue template
- `.github/ISSUE_TEMPLATE/governance_feedback.yml` – Governance feedback issue template
- `.github/PULL_REQUEST_TEMPLATE/` – Multiple pull request templates (default, governance, security)
- `.github/DISCUSSION_TEMPLATE/` – Discussion templates for governance and general topics
- `.github/workflows/doc-consistency-check.yml` – Documentation consistency validation workflow
- `Abschlussbericht_dot-github.md` – Final change summary and recommendations

### Changed

- `README.md` – Added governance, org-standard, status, and team-ownership badges; added version/verification block
- `SECURITY.md` – Fixed contact email; added version/verification block
- `CONTRIBUTING.md` – Added version/verification block
- `CODE_OF_CONDUCT.md` – Added version/verification block
- `CODEOWNERS` – Expanded with primary and secondary team assignments
- `tests/repo-check.sh` – Updated to validate new required files

---

## [1.0.0] – Initial Structure

### Added

- `.github/workflows/ci.yml` – Reusable CI workflow
- `.github/workflows/security.yml` – Basic security checks
- `.github/workflows/codeql.yml` – SAST analysis via CodeQL
- `.github/workflows/reusable-ci.yml` – Shared reusable CI workflow template
- `.github/workflows/repo-guard.yml` – Repository structure guard
- `.github/ISSUE_TEMPLATE/bug_report.yml` – Bug report template
- `.github/copilot-instructions.md` – Copilot behavior guidelines
- `.github/dependabot.yml` – Automated dependency updates
- `CODEOWNERS` – Code ownership definitions
- `PULL_REQUEST_TEMPLATE.md` – Standardized pull request template
- `SECURITY.md` – Security policy and responsible disclosure
- `CONTRIBUTING.md` – Contribution guidelines
- `README.md` – Repository overview (German and English)
- `LICENSE` – Legal license information
- `ARCHITECTURE.md` – Platform architecture overview
- `DECISIONS.md` – Architecture decision log
- `REPOSITORY_MAP.md` – Repository responsibility map
- `AI_CONTEXT.md` – AI and Copilot context document
- `profile/README.md` – Organization-level GitHub profile
- `assets/` – Logo and branding assets
- `repo-templates/` – README, badge, and footer templates
- `.gitleaks.toml` – Secret scanning configuration
