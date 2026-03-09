# Scripts

This directory is reserved for operational and maintenance scripts specific to the AT Medical `.github` organization repository.

## Purpose

Scripts placed here should support:

- repository maintenance automation
- governance validation helpers
- template generation or update scripts

## Guidelines

- All scripts must be clearly documented with a comment header explaining their purpose.
- No secrets, credentials, or sensitive values may be hardcoded in scripts.
- Prefer POSIX-compatible shell scripts where possible.
- Scripts should be idempotent where applicable.

## Current Scripts

No scripts are currently defined for this repository.

Scripts for infrastructure, deployment, or operational automation belong in the appropriate domain repository (see [`REPOSITORY_MAP.md`](../REPOSITORY_MAP.md) for details):

- `ATMED-infrastructure/scripts/` – VPS and server automation
- `ATMED-devops/scripts/` – CI/CD and deployment automation
- `ATMED-tools/scripts/` – Utility and maintenance scripts
