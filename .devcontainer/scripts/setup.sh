#!/usr/bin/env bash

echo "=================================="
echo " Instant Dev Environment Setup"
echo "=================================="

echo ""
echo "Checking installed tools..."

git --version
node --version
npm --version
python3 --version
curl --version | head -n 1

echo ""
echo "Checking for sample Node API dependencies..."

if [ -f "sample-projects/node-api/package.json" ]; then
  cd sample-projects/node-api || exit 1
  npm install
  cd ../..
else
  echo "No Node API package.json found. Skipping npm install."
fi

echo ""
echo "Running health check..."

if [ -f "scripts/health-check.sh" ]; then
  ./scripts/health-check.sh
else
  echo "Health check script not found."
fi

echo ""
echo "Setup completed successfully."
