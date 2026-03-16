# Contributing Guidelines

Thank you for contributing to AT Medical repositories. All contributions follow the workflow and standards described here.

## Workflow

1. Fork or branch from `main`
2. Create a descriptive feature branch (e.g., `feat/add-workflow-template`)
3. Make your changes with small, focused commits
4. Open a Pull Request against `main`
5. Request review from a code owner
6. Merge after approval

Direct commits to the main branch are not allowed.

## Commit Messages

Use clear and concise commit messages. Prefix with a type:

- `feat:` – new feature or addition
- `fix:` – bug fix
- `docs:` – documentation change
- `chore:` – maintenance, dependencies, tooling
- `refactor:` – code restructuring without behavior change
- `ci:` – CI/CD workflow changes

## Pull Requests

- Fill in the pull request template completely.
- Keep changes focused and minimal.
- Describe the motivation and the scope of the change.
- Link any related issues.
- Do not auto-merge.

## Code Standards

- Prefer explicit and readable solutions.
- Follow the style of existing code in the repository.
- Do not introduce unnecessary dependencies.
- All secrets and credentials must be managed via GitHub Secrets or environment variables.

## Security

Never commit:

- passwords
- API keys
- tokens
- certificates
- private keys or PEM files

Report security vulnerabilities privately via the process described in [SECURITY.md](SECURITY.md).

## Code of Conduct

All contributors are expected to follow the [Code of Conduct](CODE_OF_CONDUCT.md).

## Questions

For questions about contribution, open a GitHub Discussion or contact us via the [AT Medical contact form](https://www.at-medical.de/kontakt).

---

> **Version:** 0.9.0 | **Date:** 2026-03-16 | **Status:** verified | **Repository:** .github
