#!/usr/bin/env bash
set -euo pipefail

echo "Starting project setup..."

echo "Setting script permissions..."
chmod +x scripts/*.sh

if [ -f "sample-projects/node-api/package.json" ]; then
  echo "Installing Node.js dependencies for sample-projects/node-api..."
  npm install --prefix sample-projects/node-api
else
  echo "Node API package.json was not found. Skipping Node dependency setup."
fi

if [ -f "sample-projects/python-script/requirements.txt" ]; then
  echo "Creating Python virtual environment..."
  python3 -m venv .venv

  echo "Installing Python dependencies..."
  . .venv/bin/activate
  python -m pip install --upgrade pip
  pip install -r sample-projects/python-script/requirements.txt
  deactivate
else
  echo "Python requirements.txt was not found. Skipping Python dependency setup."
fi

echo "Setup completed successfully."
