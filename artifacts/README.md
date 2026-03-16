# Artifacts

This directory is reserved for artifact intake and release management.

## Structure

| Directory | Purpose |
|-----------|---------|
| `incoming/` | Artifacts received from external sources (VPS, Webspace, R2) |
| `staged/` | Artifacts staged for validation before promotion |
| `releases/` | Validated and released artifacts |

## Notes

- Artifact intake is currently **disabled** for this repository (see `metadata/repository-profile.yml`).
- These directories are prepared for future enterprise artifact integration.
- Never commit secrets, credentials, or sensitive data in artifacts.
