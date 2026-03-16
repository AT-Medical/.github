## Security Change

> ⚠️ This pull request template is for security-related changes.
> Handle all sensitive details with care and do not include secrets or credentials.

### Summary

Briefly describe the security change and its purpose.

### Type of security change

- [ ] Security policy update (`SECURITY.md`)
- [ ] Secret scanning configuration (`.gitleaks.toml`)
- [ ] Security workflow change
- [ ] Dependency update (security-motivated)
- [ ] Access control change (`CODEOWNERS`)
- [ ] Other: _____________

### Related CVE or advisory

CVE / advisory reference (if applicable):

### Risk assessment

Describe potential risks or impact of this change:

### Review requirements

- [ ] Reviewed by @AT-Medical/devops-team
- [ ] Reviewed by @AT-Medical/security-team

### Checklist

- [ ] No secrets or credentials included
- [ ] `CHANGELOG.md` updated
- [ ] Security documentation updated if applicable
- [ ] Verified no sensitive information is exposed
