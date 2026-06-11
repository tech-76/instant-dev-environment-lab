#!/usr/bin/env bash
set -euo pipefail

PASS_COUNT=0
FAIL_COUNT=0

check_command() {
  local command_name="$1"

  if command -v "$command_name" >/dev/null 2>&1; then
    echo "PASS: $command_name is installed."
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    echo "FAIL: $command_name is not installed."
    FAIL_COUNT=$((FAIL_COUNT + 1))
  fi
}

check_file() {
  local file_path="$1"

  if [ -f "$file_path" ]; then
    echo "PASS: Found $file_path."
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    echo "FAIL: Missing $file_path."
    FAIL_COUNT=$((FAIL_COUNT + 1))
  fi
}

echo "Running environment health check..."

check_command bash
check_command git
check_command jq
check_command node
check_command npm
check_command python3
check_command pip3
check_command shellcheck

check_file README.md
check_file .devcontainer/devcontainer.json
check_file .devcontainer/Dockerfile
check_file .github/workflows/project-quality.yml
check_file scripts/setup.sh
check_file scripts/health-check.sh
check_file sample-projects/html-css-site/index.html
check_file sample-projects/node-api/server.js
check_file sample-projects/python-script/main.py

echo "Validating devcontainer JSON..."
jq empty .devcontainer/devcontainer.json

echo "Checking shell script syntax..."
bash -n scripts/setup.sh
bash -n scripts/health-check.sh
shellcheck scripts/setup.sh scripts/health-check.sh

echo "Checking Node.js syntax..."
node --check sample-projects/node-api/server.js

echo "Checking Python syntax..."
python3 -m py_compile sample-projects/python-script/main.py

echo "Health check summary: $PASS_COUNT passed, $FAIL_COUNT failed."

if [ "$FAIL_COUNT" -gt 0 ]; then
  echo "Health check completed with failures. Review the output above."
  exit 1
fi

echo "Environment health check completed successfully."
