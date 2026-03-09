# AT Medical GitHub Badge Matrix

This document defines which badges should be used in which repository types
within the AT Medical GitHub organization.

The goal is to ensure consistent repository presentation while avoiding
broken badges in private repositories.

---

# Public Governance Repositories

Example:
- `.github`

Badges to include:

Build
Last Commit
Issues
Pull Requests
Repository Size
License
Stars
Forks
Visibility
Scope

Example badges:

![Build](https://github.com/AT-Medical/.github/actions/workflows/ci.yml/badge.svg)

![Last Commit](https://img.shields.io/github/last-commit/AT-Medical/.github)

![Issues](https://img.shields.io/github/issues/AT-Medical/.github)

![Pull Requests](https://img.shields.io/github/issues-pr/AT-Medical/.github)

![Repo Size](https://img.shields.io/github/repo-size/AT-Medical/.github)

---

# Private Platform Repositories

Examples:

ATMED-infrastructure  
ATMED-devops  
ATMED-web  
ATMED-docs  

Badges to include:

Build  
Release  
Version  
Visibility  
Type  
Layer or Domain  
Status  

Example:

![Build](https://github.com/AT-Medical/REPOSITORY/actions/workflows/ci.yml/badge.svg)

![Release](https://img.shields.io/badge/release-internal-blue)

![Version](https://img.shields.io/badge/version-unreleased-purple)

---

# Private Product Repositories

Example:

DIG-prescriptcheck  
DIG-respondai  
DIG-cognicore  
DIG-revivation

Badges:

Build  
Release  
Version  
Visibility  
Domain  
Product  
Status  

Example:

![Build](https://github.com/AT-Medical/REPOSITORY/actions/workflows/ci.yml/badge.svg)

![Release](https://img.shields.io/badge/release-prototype-blue)

![Version](https://img.shields.io/badge/version-unreleased-purple)

---

# Research Repositories

Example:

RES-matrex  
RES-metaboliq  
RES-novablood

Badges:

Build  
Release  
Version  
Visibility  
Domain  
Status  

Example:

![Build](https://github.com/AT-Medical/REPOSITORY/actions/workflows/ci.yml/badge.svg)

![Release](https://img.shields.io/badge/release-research-blue)

![Version](https://img.shields.io/badge/version-unreleased-purple)

---

# Academy Repositories

Example:

ACA-elearning

Badges:

Build  
Release  
Version  
Visibility  
Domain  
Status  

Example:

![Build](https://github.com/AT-Medical/REPOSITORY/actions/workflows/ci.yml/badge.svg)

![Release](https://img.shields.io/badge/release-internal-blue)

![Version](https://img.shields.io/badge/version-unreleased-purple)

---

# Sandbox / Demo Repositories

Example:

ATMED-sandbox

Badges:

Workflow specific badges  
Release  
Version  
Visibility  
Type  
Purpose  
Status  

Example:

Auto Assign workflow badge  
Proof HTML workflow badge

---

# Important Rule

Never include badges that expose private repository metadata such as:

github/issues  
github/last-commit  
github/repo-size  

These will return "repository not found" when the repository is private.

Instead use static badges for private repositories.
