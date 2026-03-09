# Changelog

All notable changes to the AT Medical organization-wide GitHub configuration are documented here.

This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

---

## [Unreleased]

### Added

- `docs/` directory for organizational documentation index
- `scripts/` directory for placeholder scripts
- `CHANGELOG.md` for version and change tracking
- `.github/workflows/security-scan.yml` standardized security scanning workflow
- `repo-templates/` with README and badge matrix templates for all repository types

### Changed

- Standardized repository structure to align with organization-wide requirements

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
