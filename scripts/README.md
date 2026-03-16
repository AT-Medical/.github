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

| Script | Purpose |
|--------|---------|
| [`validate/repository-selfcheck.sh`](validate/repository-selfcheck.sh) | Full repository health self-check |

### Usage

```bash
bash scripts/validate/repository-selfcheck.sh
```

## Structure

| Directory | Purpose |
|-----------|---------|
| `validate/` | Repository structure and metadata validation |
| `reporting/` | Status and reporting scripts |
| `cleanup/` | Cleanup and housekeeping scripts |
