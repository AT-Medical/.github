# AT Medical Repository Folder Structure Guide

This document defines the recommended folder structure for each repository type within the AT Medical GitHub organization.

Use this as a reference when initializing new repositories.

---

## Core Repositories (`ATMED-*`)

### `ATMED-assets`

```
ATMED-assets/
├── assets/
│   ├── logos/
│   │   ├── svg/
│   │   └── png/
│   ├── icons/
│   ├── colors/
│   └── fonts/
├── docs/
└── .github/workflows/
```

### `ATMED-docs`

```
ATMED-docs/
├── docs/
│   ├── architecture/
│   ├── governance/
│   ├── operations/
│   └── standards/
└── .github/workflows/
```

### `ATMED-devops`

```
ATMED-devops/
├── workflows/
├── scripts/
├── templates/
├── docs/
└── .github/workflows/
```

### `ATMED-infrastructure`

```
ATMED-infrastructure/
├── docs/
├── docker/
├── nginx/
├── scripts/
├── monitoring/
├── backup/
└── .github/workflows/
```

### `ATMED-web`

```
ATMED-web/
├── docs/
├── src/
├── assets/
├── scripts/
├── tests/
└── .github/workflows/
```

### `ATMED-sandbox`

```
ATMED-sandbox/
├── docs/
├── examples/
├── scripts/
└── .github/workflows/
```

---

## Digital Product Repositories (`DIG-*`)

```
DIG-[product-name]/
├── docs/
├── src/
├── api/
├── frontend/
├── backend/
├── services/
├── models/
├── tests/
├── scripts/
├── infrastructure/
└── .github/workflows/
```

### Applicable to:
- `DIG-prescriptcheck`
- `DIG-respondai`
- `DIG-cognicore`
- `DIG-revivation`

---

## Research Repositories (`RES-*`)

```
RES-[research-name]/
├── docs/
├── research/
├── models/
├── data/
├── datasets/
├── analysis/
├── scripts/
├── tests/
└── .github/workflows/
```

### Applicable to:
- `RES-matrex`
- `RES-metaboliq`
- `RES-novablood`

---

## Academy Repositories (`ACA-*`)

```
ACA-[academy-name]/
├── docs/
├── courses/
├── moodle-integration/
├── media/
├── scripts/
├── tests/
└── .github/workflows/
```

### Applicable to:
- `ACA-elearning`

---

## Notes

- Every repository must contain a `README.md` at the root level.
- Every repository should contain `SECURITY.md` and `SUPPORT.md` where applicable.
- The `.github/workflows/` directory should contain at minimum a `ci.yml` placeholder.
- Research repositories must never contain personal or patient data.
- All folder structures are recommendations and may be adapted to specific project needs.
