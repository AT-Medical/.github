# Staging Environment

This document defines the standards, expectations, and constraints for the AT Medical staging environment.

## Purpose and Intended Use

The staging environment is the pre-production validation layer.

It is used to verify that changes work correctly in an environment that closely mirrors production before they are deployed to live systems.

Staging is intended for integration testing, acceptance testing, and release validation.

The staging environment must not be used for processing real patient data or any personally identifiable information (PII).

## Deployment and Branching

- Deployments to staging are triggered from release candidate branches or directly from `main` after peer review and approval.
- Only reviewed and merged pull requests are deployed to staging.
- Staging deployments must be intentional and documented, not automatic from feature branches.
- All staging deployments should be traceable to a specific pull request or release tag.

## Configuration and Secrets Handling

- All configuration values must be provided through environment variables or a dedicated secret management solution.
- Staging uses its own set of credentials and secrets, completely separate from production values.
- Never use production secrets, credentials, or API keys in staging.
- Secrets must not appear in logs, configuration files committed to repositories, or any output visible to unauthorized parties.
- Use `.env.example` files to document required variables with placeholder values.
- Secret injection should occur at deployment time via the CI/CD pipeline or a secret store.

## Observability and Logging

- Staging should mirror the observability configuration of production as closely as possible.
- Application logs, service metrics, and tracing should be enabled and actively monitored.
- Log verbosity should be equivalent to or slightly higher than production to aid pre-release validation.
- Logs must not contain patient data, PHI, PII, or credentials.
- Monitoring via Prometheus and Grafana is expected where applicable.
- Alerts should be configured to notify the relevant team of critical failures in staging.

## Data Handling

- The staging environment must not contain real patient data or identifiable health information.
- Anonymized or synthetically generated data must be used for all testing and validation.
- Any dataset used in staging must be explicitly approved and documented as non-production data.
- Data used in staging must be disposed of appropriately when no longer needed.
- Applicable data protection requirements apply even when using anonymized test data.

## Access Control and Approval

- Access to staging infrastructure is restricted to authorized team members.
- Access must be granted through documented and auditable processes.
- Staging deployments require at least one peer review and approval before proceeding.
- All access credentials for staging must be stored securely and rotated regularly.
- Shared or generic credentials must not be used for staging access.

## Rollback Strategy

- If a staging deployment introduces failures, the previous known-good release should be redeployed promptly.
- Rollback should be performed by reverting to the previous release tag or container image version.
- The rollback decision and execution must be documented.
- Containerized services should use pinned and versioned image references to support reliable rollback.
- A post-rollback review should be conducted to identify the root cause before re-attempting deployment.
