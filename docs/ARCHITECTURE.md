# AT Medical GitHub Organization – Architecture

## Purpose

`.github` is the organization-level meta repository for AT Medical.
It defines the public organization profile, shared GitHub community health files, central templates and organization-wide repository experience standards.

## Repository Type

This is an **organization governance / meta repository**, not a runtime service.

## Platform Role

```text
AT Medical GitHub Organization
  ↓
.github
  ↓
Org profile, default templates, shared meta standards
```

## Scope

- organization profile README
- shared issue and pull request templates
- community health defaults
- central GitHub-facing presentation layer

## VPS Role

No runtime stack required. Optional mirror path for archival/reference use:

| Purpose | Path |
|---|---|
| Repository sync target | `/srv/atmed/repos/.github` |

## Relationship to Other Repositories

- `.github` = organization meta layer
- `github-governance` = policy and audit layer
- all other repositories inherit or align with shared defaults defined here

## Target State

Conformant when organization-level role, non-runtime nature and shared-governance purpose are explicitly documented.
