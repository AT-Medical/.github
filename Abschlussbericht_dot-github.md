# Abschlussbericht: AT Medical `.github` Repository – Enterprise Standardization

**Repository:** AT-Medical/.github  
**Version:** 0.9.0  
**Datum / Date:** 2026-03-16  
**Status:** verified  
**Erstellt von / Created by:** @AT-Medical/devops-team

---

## 🇩🇪 Zusammenfassung

Dieses Dokument fasst alle durchgeführten Änderungen im Rahmen der Enterprise-Standardisierung des `.github`-Repositorys zusammen. Es enthält außerdem eine Übersicht verbleibender manueller Schritte sowie Empfehlungen für die weitere Entwicklung.

---

## 🇬🇧 Summary

This document summarizes all changes made as part of the enterprise standardization of the `.github` repository. It also includes an overview of remaining manual steps and recommendations for future development.

---

## 🇩🇪 Durchgeführte Änderungen

### 1. Metadaten und Konfiguration

| Datei | Aktion |
|---|---|
| `metadata/repository-profile.yml` | Neu erstellt – Repository-Profil mit Typ, Sichtbarkeit, Domänen, Teams, Kontakten |
| `configs/automation/copilot/repository-purpose.yml` | Neu erstellt – Copilot-Kontext und Richtlinien für dieses Repository |

### 2. Governance-Dokumente

| Datei | Aktion |
|---|---|
| `README.md` | Aktualisiert – Neue Badges (governance, org-standard, status, team); Versions-/Verifizierungsblock hinzugefügt |
| `SECURITY.md` | Aktualisiert – Korrekte E-Mail-Adresse (`security@at-medical.de`); Versionsblock hinzugefügt |
| `CONTRIBUTING.md` | Aktualisiert – Versionsblock hinzugefügt |
| `CODE_OF_CONDUCT.md` | Aktualisiert – Versionsblock oberhalb des Footers hinzugefügt |
| `CHANGELOG.md` | Aktualisiert – Eintrag für Version 0.9.0 und alle aktuellen Änderungen |
| `CODEOWNERS` | Aktualisiert – Teambasierte Eigentümerschaft (primary: devops-team; secondary: admin-team, security-team, legal-team) |

### 3. Issue-Templates

| Datei | Aktion |
|---|---|
| `.github/ISSUE_TEMPLATE/bug_report.yml` | Bereits vorhanden |
| `.github/ISSUE_TEMPLATE/feature_request.yml` | Neu erstellt |
| `.github/ISSUE_TEMPLATE/governance_feedback.yml` | Neu erstellt |

### 4. Pull-Request-Templates

| Datei | Aktion |
|---|---|
| `.github/PULL_REQUEST_TEMPLATE/default.md` | Neu erstellt – Standard-PR-Template |
| `.github/PULL_REQUEST_TEMPLATE/governance_change.md` | Neu erstellt – Spezielles Template für Governance-Änderungen |
| `.github/PULL_REQUEST_TEMPLATE/security_change.md` | Neu erstellt – Spezielles Template für sicherheitsrelevante Änderungen |

### 5. Discussion-Templates

| Datei | Aktion |
|---|---|
| `.github/DISCUSSION_TEMPLATE/governance.yml` | Neu erstellt |
| `.github/DISCUSSION_TEMPLATE/general.yml` | Neu erstellt |

### 6. Workflows

| Datei | Aktion |
|---|---|
| `.github/workflows/doc-consistency-check.yml` | Neu erstellt – Dokumentationskonsistenz-Prüfung |
| `.github/workflows/ci.yml` | Bereits vorhanden |
| `.github/workflows/compliance-check.yml` | Bereits vorhanden |
| `.github/workflows/repo-guard.yml` | Bereits vorhanden |
| `.github/workflows/security-scan.yml` | Bereits vorhanden |
| `.github/workflows/codeql.yml` | Bereits vorhanden |

### 7. Tests

| Datei | Aktion |
|---|---|
| `tests/repo-check.sh` | Aktualisiert – Prüfung auf neue Pflichtdateien und -verzeichnisse |

---

## 🇬🇧 Changes Made

### 1. Metadata and Configuration

| File | Action |
|---|---|
| `metadata/repository-profile.yml` | Created – Repository profile with type, visibility, domains, teams, contacts |
| `configs/automation/copilot/repository-purpose.yml` | Created – Copilot context and guidelines for this repository |

### 2. Governance Documents

| File | Action |
|---|---|
| `README.md` | Updated – Added governance, org-standard, status, team badges; added version/verification block |
| `SECURITY.md` | Updated – Fixed contact email (`security@at-medical.de`); added version block |
| `CONTRIBUTING.md` | Updated – Added version block |
| `CODE_OF_CONDUCT.md` | Updated – Added version block above footer |
| `CHANGELOG.md` | Updated – Added entry for version 0.9.0 and all current changes |
| `CODEOWNERS` | Updated – Team-based ownership (primary: devops-team; secondary: admin-team, security-team, legal-team) |

### 3. Issue Templates

| File | Action |
|---|---|
| `.github/ISSUE_TEMPLATE/bug_report.yml` | Already existed |
| `.github/ISSUE_TEMPLATE/feature_request.yml` | Created |
| `.github/ISSUE_TEMPLATE/governance_feedback.yml` | Created |

### 4. Pull Request Templates

| File | Action |
|---|---|
| `.github/PULL_REQUEST_TEMPLATE/default.md` | Created – Default PR template |
| `.github/PULL_REQUEST_TEMPLATE/governance_change.md` | Created – Governance change PR template |
| `.github/PULL_REQUEST_TEMPLATE/security_change.md` | Created – Security change PR template |

### 5. Discussion Templates

| File | Action |
|---|---|
| `.github/DISCUSSION_TEMPLATE/governance.yml` | Created |
| `.github/DISCUSSION_TEMPLATE/general.yml` | Created |

### 6. Workflows

| File | Action |
|---|---|
| `.github/workflows/doc-consistency-check.yml` | Created – Documentation consistency validation |
| All other workflows | Already existed, no changes |

### 7. Tests

| File | Action |
|---|---|
| `tests/repo-check.sh` | Updated – Added checks for new required files and directories |

---

## 🇩🇪 Verbleibende manuelle Schritte

Die folgenden Aktionen können nicht automatisiert über einen Pull Request durchgeführt werden und erfordern manuelles Handeln durch Administrator:innen der Organisation.

1. **Repository-Topics / Tags setzen**
   In den GitHub Repository-Einstellungen unter *About* müssen folgende Topics gesetzt werden:
   `governance`, `templates`, `organization`, `security`, `compliance`, `documentation`

2. **Branch-Schutzregeln überprüfen**
   Sicherstellen, dass der `main`-Branch folgende Schutzregeln hat:
   - Direkte Pushes verboten
   - Pull-Request-Reviews erforderlich (mindestens 1 Reviewer)
   - Status-Checks erforderlich (CI, compliance-check)

3. **GitHub Teams anlegen oder verifizieren**
   Sicherstellen, dass folgende Teams in der AT-Medical-Organisation existieren und mit den korrekten Mitgliedern besetzt sind:
   - `AT-Medical/devops-team`
   - `AT-Medical/admin-team`
   - `AT-Medical/security-team`
   - `AT-Medical/legal-team`

4. **Discussions aktivieren**
   In den Repository-Einstellungen müssen GitHub Discussions aktiviert werden, damit die Discussion-Templates verwendet werden können.

5. **Dependabot-Alerts aktivieren**
   In den Sicherheitseinstellungen des Repositorys Dependabot-Alerts aktivieren.

6. **Obsolete Branches entfernen**
   Nicht mehr benötigte Feature-Branches manuell über die GitHub-Oberfläche oder per CLI entfernen.

7. **SECURITY.md – Private Vulnerability Reporting aktivieren**
   In den Repository-Einstellungen unter *Security* > *Private vulnerability reporting* aktivieren, damit Sicherheitslücken über GitHub gemeldet werden können.

---

## 🇬🇧 Remaining Manual Steps

The following actions cannot be automated via a pull request and require manual action by organization administrators.

1. **Set repository topics / tags**
   In GitHub repository settings under *About*, set the following topics:
   `governance`, `templates`, `organization`, `security`, `compliance`, `documentation`

2. **Verify branch protection rules**
   Ensure that the `main` branch has the following protection rules:
   - No direct pushes allowed
   - Pull request reviews required (at least 1 reviewer)
   - Status checks required (CI, compliance-check)

3. **Create or verify GitHub teams**
   Ensure the following teams exist in the AT-Medical organization with the correct members:
   - `AT-Medical/devops-team`
   - `AT-Medical/admin-team`
   - `AT-Medical/security-team`
   - `AT-Medical/legal-team`

4. **Enable Discussions**
   In the repository settings, enable GitHub Discussions so that the discussion templates can be used.

5. **Enable Dependabot alerts**
   In the repository security settings, enable Dependabot alerts.

6. **Remove obsolete branches**
   Manually remove any unused feature branches via the GitHub UI or CLI.

7. **Enable private vulnerability reporting**
   In repository settings under *Security* > *Private vulnerability reporting*, enable GitHub's private vulnerability reporting feature.

---

## 🇩🇪 Empfehlungen

- **Regelmäßige Governance-Reviews**: Governance-Dokumente sollten mindestens halbjährlich auf Aktualität überprüft werden.
- **Template-Pflege**: Issue- und PR-Templates sollten nach Bedarf erweitert werden, wenn neue Anforderungen entstehen.
- **Weitere Workflows**: Zukünftig können Workflows für automatische Benachrichtigungen oder Überprüfungen bei Governance-Änderungen hinzugefügt werden.
- **Sprachkonsistenz**: Alle neuen Dokumente sollten dem bilingualen Standard (🇩🇪 zuerst, dann 🇬🇧) folgen gemäß Decision #8.

## 🇬🇧 Recommendations

- **Regular governance reviews**: Governance documents should be reviewed for currency at least semi-annually.
- **Template maintenance**: Issue and PR templates should be extended as new requirements arise.
- **Additional workflows**: Workflows for automated notifications or reviews on governance changes can be added in the future.
- **Language consistency**: All new documents should follow the bilingual standard (🇩🇪 first, then 🇬🇧) per Decision #8.

---

> **Version:** 0.9.0 | **Date:** 2026-03-16 | **Status:** verified | **Repository:** .github
