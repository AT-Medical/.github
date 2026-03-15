#!/usr/bin/env bash
# repo-check.sh
# Repository structure and governance validation tests for AT Medical .github repository.
# Each test prints PASS or FAIL and exits with a non-zero code if any test fails.

set -euo pipefail

PASS=0
FAIL=0
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

run_test() {
  local description="$1"
  local result="$2"
  if [ "$result" = "0" ]; then
    echo "PASS: $description"
    PASS=$((PASS + 1))
  else
    echo "FAIL: $description"
    FAIL=$((FAIL + 1))
  fi
}

file_exists() {
  [ -f "$REPO_ROOT/$1" ] && echo 0 || echo 1
}

dir_exists() {
  [ -d "$REPO_ROOT/$1" ] && echo 0 || echo 1
}

file_nonempty() {
  [ -s "$REPO_ROOT/$1" ] && echo 0 || echo 1
}

echo "Running AT Medical .github repository checks..."
echo "Repository root: $REPO_ROOT"
echo "---"

# Governance files
run_test "README.md exists"           "$(file_exists README.md)"
run_test "README.md is non-empty"     "$(file_nonempty README.md)"
run_test "SECURITY.md exists"         "$(file_exists SECURITY.md)"
run_test "CONTRIBUTING.md exists"     "$(file_exists CONTRIBUTING.md)"
run_test "CODE_OF_CONDUCT.md exists"  "$(file_exists CODE_OF_CONDUCT.md)"
run_test "LICENSE exists"             "$(file_exists LICENSE)"
run_test "CODEOWNERS exists"          "$(file_exists CODEOWNERS)"
run_test ".gitignore exists"          "$(file_exists .gitignore)"

# Workflow files
run_test ".github/workflows/ci.yml exists"               "$(file_exists .github/workflows/ci.yml)"
run_test ".github/workflows/security-scan.yml exists"    "$(file_exists .github/workflows/security-scan.yml)"
run_test ".github/workflows/compliance-check.yml exists" "$(file_exists .github/workflows/compliance-check.yml)"
run_test ".github/workflows/reusable-ci.yml exists"      "$(file_exists .github/workflows/reusable-ci.yml)"

# Directories
run_test "docs/ directory exists"              "$(dir_exists docs)"
run_test "docs/architecture/ directory exists" "$(dir_exists docs/architecture)"
run_test "docs/security/ directory exists"     "$(dir_exists docs/security)"
run_test "docs/deployment/ directory exists"   "$(dir_exists docs/deployment)"
run_test "tests/ directory exists"             "$(dir_exists tests)"
run_test "scripts/ directory exists"           "$(dir_exists scripts)"

# Documentation files
run_test "docs/architecture/overview.md exists"       "$(file_exists docs/architecture/overview.md)"
run_test "docs/security/security-model.md exists"     "$(file_exists docs/security/security-model.md)"
run_test "docs/deployment/deployment.md exists"       "$(file_exists docs/deployment/deployment.md)"

# YAML validity check for workflow files (requires python3 with pyyaml)
if command -v python3 > /dev/null 2>&1 && python3 -c "import yaml" 2>/dev/null; then
  while IFS= read -r -d '' wf; do
    wf_name="$(basename "$wf")"
    if python3 -c "
import sys, yaml
try:
    yaml.safe_load(open(sys.argv[1]))
except Exception as e:
    sys.exit(1)
" "$wf" 2>/dev/null; then
      run_test "$wf_name is valid YAML" "0"
    else
      run_test "$wf_name is valid YAML" "1"
    fi
  done < <(find "$REPO_ROOT/.github/workflows" -maxdepth 1 -name "*.yml" -print0 2>/dev/null)
else
  echo "SKIP: python3 or pyyaml not available – skipping YAML validation"
fi

echo "---"
echo "Results: $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
