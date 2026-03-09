# Production Environment

This document defines the standards, expectations, and constraints for the AT Medical production environment.

## Purpose and Intended Use

The production environment hosts live, publicly accessible services and systems used by real users, including healthcare professionals and learners.

It is the final stage in the deployment pipeline and must be treated with the highest level of care, security, and stability.

Only changes that have been fully reviewed, tested in staging, and approved are permitted in production.

## Deployment and Branching

- Deployments to production are made exclusively from `main` after successful staging validation.
- All production deployments require a reviewed and approved pull request.
- No feature branches, hotfix branches, or untested changes may be deployed directly to production.
- Emergency hotfixes follow an accelerated but still review-gated process: a dedicated `hotfix/<description>` branch, peer review, and a minimal approval cycle before merge and deployment.
- Every production deployment must be tagged with a release version and linked to a changelog entry.

## Configuration and Secrets Handling

- All configuration values must be injected at deployment time via environment variables or a dedicated secret management solution.
- Production secrets are completely isolated from development and staging credentials.
- Never commit secrets, credentials, API keys, tokens, certificates, or private URLs to any repository branch.
- Secret rotation must follow a documented schedule and process.
- Access to production secrets is strictly limited to authorized personnel and automated deployment pipelines.
- Use `.env.example` files and documentation to describe required variables; never include actual production values.

## Observability and Logging

- Full observability is required in production, including application logs, service metrics, and alerting.
- Monitoring via Prometheus and Grafana is expected for all active production services.
- Alerts must be configured for critical failure conditions and routed to the responsible team.
- Logs must not contain patient data, PHI (Protected Health Information), PII, credentials, or other sensitive information.
- Log retention periods must comply with applicable legal and operational requirements.
- Structured logging is required to support auditing, incident response, and operational analysis.

## Data Handling

- Production systems may interact with real user data; strict data protection requirements apply at all times.
- PHI and PII must never appear in logs, error messages, monitoring dashboards, or external outputs.
- Data access and processing must comply with applicable privacy regulations, including healthcare-specific requirements.
- Data retention and deletion policies must be explicitly defined, documented, and enforced.
- Backups of production data must be encrypted, stored securely, and tested regularly for restorability.
- Any data export, migration, or transformation involving real user data requires documented authorization.

## Access Control and Approval

- Access to production infrastructure is strictly limited to authorized personnel with a documented business need.
- All access must be granted through formal, auditable processes with approval from responsible parties.
- Multi-factor authentication is required for all accounts with production access.
- Production deployments require documented approval from at least one authorized reviewer.
- Access credentials must never be shared, stored insecurely, or committed to repositories.
- All access must be regularly reviewed and revoked promptly when no longer required.

## Rollback Strategy

- If a production deployment introduces failures or instability, an immediate rollback to the previous stable release must be initiated.
- Rollback is performed by redeploying the previous release tag or container image version.
- The rollback decision, execution, and outcome must be documented and communicated to the relevant team.
- Containerized services must use pinned and versioned image references to support reliable and fast rollback.
- A formal post-incident review must be conducted after any production rollback to identify the root cause and prevent recurrence.
- The rollback procedure must be tested periodically to confirm it functions correctly before an actual incident occurs.
