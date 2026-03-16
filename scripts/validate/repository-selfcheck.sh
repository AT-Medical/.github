#!/usr/bin/env bash
# scripts/validate/repository-selfcheck.sh
# AT Medical Enterprise Repository Self-Check
# Verifies structure completeness, metadata presence, workflow references,
# script executability, documentation consistency, and dependency validity.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
PASS=0
FAIL=0
WARN=0

run_test() {
  local description="$1"
  local result="$2"
  local severity="${3:-fail}"
  if [ "$result" = "0" ]; then
    echo "PASS: $description"
    PASS=$((PASS + 1))
  else
    if [ "$severity" = "warn" ]; then
      echo "WARN: $description"
      WARN=$((WARN + 1))
    else
      echo "FAIL: $description"
      FAIL=$((FAIL + 1))
    fi
  fi
}

file_exists()    { [ -f "$REPO_ROOT/$1" ] && echo 0 || echo 1; }
dir_exists()     { [ -d "$REPO_ROOT/$1" ] && echo 0 || echo 1; }
file_nonempty()  { [ -s "$REPO_ROOT/$1" ] && echo 0 || echo 1; }
file_exec()      { [ -x "$REPO_ROOT/$1" ] && echo 0 || echo 1; }

echo "========================================"
echo " AT Medical Repository Self-Check"
echo " Repository: $(basename "$REPO_ROOT")"
echo " Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "========================================"
echo ""

# ── 1. Governance Files ────────────────────────────────────────────────────────
echo "## 1. Governance Files"
run_test "README.md exists and is non-empty"        "$(file_nonempty README.md)"
run_test "SECURITY.md exists"                       "$(file_exists SECURITY.md)"
run_test "CONTRIBUTING.md exists"                   "$(file_exists CONTRIBUTING.md)"
run_test "CODE_OF_CONDUCT.md exists"                "$(file_exists CODE_OF_CONDUCT.md)"
run_test "LICENSE exists"                           "$(file_exists LICENSE)"
run_test "CHANGELOG.md exists"                      "$(file_exists CHANGELOG.md)"
run_test "CODEOWNERS exists"                        "$(file_exists CODEOWNERS)"
run_test "DECISIONS.md exists"                      "$(file_exists DECISIONS.md)"
run_test "ARCHITECTURE.md exists"                   "$(file_exists ARCHITECTURE.md)"
echo ""

# ── 2. Metadata ────────────────────────────────────────────────────────────────
echo "## 2. Metadata"
run_test "metadata/repository-profile.yml exists"   "$(file_exists metadata/repository-profile.yml)"
run_test "metadata/tags/taxonomy.yml exists"        "$(file_exists metadata/tags/taxonomy.yml)"
run_test "metadata/tags/rules.yml exists"           "$(file_exists metadata/tags/rules.yml)"
run_test "metadata/tags/file-tags.yml exists"       "$(file_exists metadata/tags/file-tags.yml)"
echo ""

# ── 3. Directory Structure ─────────────────────────────────────────────────────
echo "## 3. Directory Structure"
for d in \
  configs/automation \
  docs/architecture \
  docs/governance \
  docs/operations \
  docs/deployment \
  scripts/validate \
  scripts/reporting \
  scripts/cleanup \
  templates \
  status \
  artifacts/incoming \
  artifacts/staged \
  artifacts/releases \
  metadata/tags; do
  run_test "$d/ directory exists" "$(dir_exists "$d")"
done
echo ""

# ── 4. Workflow Files ──────────────────────────────────────────────────────────
echo "## 4. Workflow Files"
for wf in \
  .github/workflows/ci.yml \
  .github/workflows/ci-validation.yml \
  .github/workflows/governance-check.yml \
  .github/workflows/tag-validation.yml \
  .github/workflows/file-tagging.yml \
  .github/workflows/dependency-check.yml \
  .github/workflows/cleanup-weekly.yml \
  .github/workflows/repository-selfcheck.yml \
  .github/workflows/compliance-check.yml \
  .github/workflows/security-scan.yml \
  .github/dependabot.yml; do
  run_test "$wf exists" "$(file_exists "$wf")"
done
echo ""

# ── 5. YAML Validity ───────────────────────────────────────────────────────────
echo "## 5. YAML Validity"
if command -v python3 > /dev/null 2>&1 && python3 -c "import yaml" 2>/dev/null; then
  while IFS= read -r -d '' wf; do
    wf_rel="${wf#$REPO_ROOT/}"
    if python3 -c "
import sys, yaml
try:
    yaml.safe_load(open(sys.argv[1]))
except Exception as e:
    print(f'YAML error: {e}')
    sys.exit(1)
" "$wf" 2>/dev/null; then
      run_test "$wf_rel is valid YAML" "0"
    else
      run_test "$wf_rel is valid YAML" "1"
    fi
  done < <(find "$REPO_ROOT/.github/workflows" -maxdepth 1 -name "*.yml" -print0 2>/dev/null)
  for mf in \
    metadata/repository-profile.yml \
    metadata/tags/taxonomy.yml \
    metadata/tags/rules.yml \
    metadata/tags/file-tags.yml \
    .github/dependabot.yml; do
    if [ -f "$REPO_ROOT/$mf" ]; then
      if python3 -c "
import sys, yaml
try:
    yaml.safe_load(open(sys.argv[1]))
except Exception as e:
    print(f'YAML error: {e}')
    sys.exit(1)
" "$REPO_ROOT/$mf" 2>/dev/null; then
        run_test "$mf is valid YAML" "0"
      else
        run_test "$mf is valid YAML" "1"
      fi
    fi
  done
else
  echo "SKIP: python3 or pyyaml not available – skipping YAML validation"
fi
echo ""

# ── 6. Script Executability ────────────────────────────────────────────────────
echo "## 6. Script Executability"
run_test "scripts/validate/repository-selfcheck.sh is executable" \
  "$(file_exec scripts/validate/repository-selfcheck.sh)"
if [ -f "$REPO_ROOT/tests/repo-check.sh" ]; then
  run_test "tests/repo-check.sh is executable" \
    "$(file_exec tests/repo-check.sh)" warn
fi
echo ""

# ── 7. Documentation Consistency ──────────────────────────────────────────────
echo "## 7. Documentation Consistency"
if grep -q "AT Medical GmbH®\|AT Medical" "$REPO_ROOT/README.md" 2>/dev/null; then
  run_test "README.md contains AT Medical branding" "0"
else
  run_test "README.md contains AT Medical branding" "1"
fi

if grep -qE "🇩🇪|🇬🇧" "$REPO_ROOT/README.md" 2>/dev/null; then
  run_test "README.md uses bilingual flag emoji headers (Decision #8)" "0"
else
  run_test "README.md uses bilingual flag emoji headers (Decision #8)" "1" warn
fi
echo ""

# ── Summary ────────────────────────────────────────────────────────────────────
echo "========================================"
echo " Results: $PASS passed | $WARN warnings | $FAIL failed"
echo "========================================"

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
