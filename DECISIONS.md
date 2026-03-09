# AT Medical Architecture Decisions

This document records important technical and organizational decisions for the AT Medical GitHub organization.

Its purpose is to preserve decision context, reduce repeated discussions, and help contributors and Copilot understand which choices are intentional.

---

## Decision Principles

When a decision is recorded here, it should be treated as the current default unless explicitly changed.

Copilot and contributors should not silently override documented decisions.

---

## Current Decisions

### 1. GitHub is the central coordination layer
GitHub is used as the central repository platform for infrastructure, web, academy, tools, research, and technical documentation.

Reason:
- consistent governance
- traceable changes
- pull-request workflow
- integration with Copilot, Dependabot, CodeQL, and Actions

---

### 2. Protected main branches are mandatory
Main branches are protected and should not be modified by direct commits in normal workflows.

Reason:
- reduce risk
- ensure reviewability
- maintain clean history
- support secure change management

---

### 3. Pull-request workflow is the standard
Changes should normally be made through:
1. feature branch
2. pull request
3. review
4. merge into main

Reason:
- explicit review
- better traceability
- safer collaboration
- improved automation support

---

### 4. Security takes priority over convenience
Secrets, credentials, tokens, API keys, certificates, and internal access information must never be committed to repositories.

Reason:
- security
- compliance
- operational safety

---

### 5. Repository responsibilities should remain clearly separated
Infrastructure, web, academy, tools, research, and documentation should remain separated unless there is an explicit reason to combine them.

Reason:
- lower complexity
- clearer ownership
- easier maintenance
- better Copilot context

---

### 6. Explicit changes only
When code or configuration is modified, only the requested changes should be made.

Unrelated cleanup, refactoring, renaming, or restructuring should not be performed unless explicitly requested.

Reason:
- prevent unintended side effects
- preserve trust
- improve reviewability

---

### 7. Documentation is part of implementation
Structural or architectural changes should be documented.

Reason:
- preserve knowledge
- support future maintenance
- improve onboarding
- reduce ambiguity for Copilot

---

### 8. Bilingual README sections use national flag emojis
Status: active  
Scope: organization

All bilingual section headings in README files and documentation templates must use national flag emojis as language indicators instead of plain text country codes.

- German sections: 🇩🇪 (not "DE")
- English sections: 🇬🇧 (not "GB")

German content always appears first, followed by the English section.

Reason:
- visual clarity and immediate language recognition
- consistent appearance across all repositories
- avoids ambiguity between country codes and other abbreviations

Implications:
- all new README files must use 🇩🇪 and 🇬🇧 before bilingual headings
- existing README files must be updated to replace any plain "DE" or "GB" text markers with the appropriate flag emoji
- Copilot must not generate "DE" or "GB" as language markers in README headings

---

## Future Decision Logging

Future decisions should be added in a simple format:

### Decision title
Status: active  
Scope: organization / repository / workflow  
Reason:
- short explanation

Implications:
- what changes because of this decision
- what should now be avoided or preferred
