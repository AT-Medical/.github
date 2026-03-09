# Tests

This directory contains tests for the AT Medical `.github` organization repository.

## Purpose

As this is a governance and configuration repository (not a runtime application), tests focus on validating:

- repository structure requirements
- required governance files are present
- workflow YAML files are syntactically valid
- documentation files exist and are non-empty

## Running Tests

```bash
bash tests/repo-check.sh
```

## Test Framework

Tests are implemented as POSIX-compatible shell scripts, which require no additional dependencies. This is appropriate for a documentation and configuration repository.

## Contents

| File | Purpose |
|---|---|
| [`repo-check.sh`](repo-check.sh) | Repository structure and governance validation |
