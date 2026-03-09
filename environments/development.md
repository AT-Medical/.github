# Development Environment

This document defines the standards, expectations, and constraints for the AT Medical development environment.

## Purpose and Intended Use

The development environment is the primary workspace for active feature development, experimentation, bug fixes, and integration testing before changes reach staging or production.

It is intended for use by developers and contributors working within the AT Medical GitHub organization.

The development environment is not suitable for processing real patient data or any personally identifiable information (PII).

## Deployment and Branching

- All development work is carried out on feature branches created from `main`.
- Feature branches follow the naming convention: `feature/<short-description>`, `fix/<short-description>`, or `chore/<short-description>`.
- Changes are deployed to the development environment from feature branches or a shared `develop` branch where applicable.
- No direct commits to protected branches are permitted.
- Pull requests must be opened before merging into any integration or shared branch.

## Configuration and Secrets Handling

- All configuration values must be provided through environment variables or secret management tooling.
- Never hardcode secrets, API keys, tokens, passwords, or credentials in source code or configuration files.
- Use `.env.example` files to document required variables with placeholder values.
- Secrets must not be committed to any repository branch.
- Development-specific secrets must be kept separate from staging and production credentials.
- Secret stores or deployment-time injection are the preferred mechanisms for supplying sensitive values.

## Observability and Logging

- Application and service logs are expected to be available during development for debugging purposes.
- Log verbosity may be higher in development than in other environments to aid troubleshooting.
- Logs must not contain patient data, PHI (Protected Health Information), PII, or credentials, even in development.
- Structured logging is preferred to support consistent analysis across environments.
- Monitoring tools such as Prometheus and Grafana may be used in a lightweight configuration for local or shared development stacks.

## Data Handling

- The development environment must not contain real patient data or identifiable health information.
- Test data should be anonymized, synthetically generated, or clearly labelled as non-production.
- Any data used for testing must comply with applicable data protection requirements.
- Data should not persist beyond the scope of a development session unless explicitly required and documented.

## Access Control and Approval

- Access to the development environment is restricted to members of the AT Medical development team.
- Credentials and access tokens for development infrastructure must not be shared informally or committed to repositories.
- Changes to shared development resources require documented review and approval via pull request.
- Temporary or personal access credentials must be rotated and revoked when no longer needed.

## Rollback Strategy

- Feature branches can be abandoned or reverted without impact on shared environments.
- If a change is merged to a shared development or integration branch and causes issues, the branch should be reverted via a pull request.
- Containerized services in development should use versioned or pinned images to allow straightforward rollback by reverting the configuration.
- All infrastructure-level changes must be documented and reversible.
