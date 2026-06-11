#!/usr/bin/env bash

echo "=================================="
echo " Environment Health Check"
echo "=================================="

STATUS=0

check_command() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "PASS: $1 is installed"
  else
    echo "FAIL: $1 is missing"
    STATUS=1
  fi
}

check_command git
check_command node
check_command npm
check_command python3
check_command curl
check_command ping
check_command tree
check_command jq
check_command nslookup

echo ""
if [ "$STATUS" -eq 0 ]; then
  echo "All required tools are available."
else
  echo "One or more required tools are missing."
fi

exit "$STATUS"
