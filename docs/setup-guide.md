# Setup Guide

## Project: instant-dev-environment-lab

This guide explains how to open and test the `instant-dev-environment-lab` project using GitHub Codespaces or VS Code Dev Containers.

The goal of this project is to demonstrate a repeatable development environment for IT Support, Technical Support, and Junior Systems/Network Administration portfolio use.

---

## 1. Basic Prerequisites

### For GitHub Codespaces

To use GitHub Codespaces, you need:

- A GitHub account
- Access to the project repository
- A supported web browser
- Internet access

GitHub Codespaces runs the development environment in the cloud, so you do not need to install Docker locally.

---

### For Local VS Code Dev Containers

To run the project locally, you need:

- Visual Studio Code
- Docker Desktop
- Git
- VS Code Dev Containers extension
- Internet access for the initial container build

This option runs the project inside a container on your own computer.

---

## 2. Open the Project in GitHub Codespaces

Follow these steps to open the project in GitHub Codespaces:

1. Go to the GitHub repository.
2. Click the green **Code** button.
3. Select the **Codespaces** tab.
4. Click **Create codespace on main**.
5. Wait for the Codespace to build.
6. Open the terminal inside Codespaces.

After the environment opens, run:

```bash
bash scripts/health-check.sh
```

If the health check passes, the environment is ready to use.

---

## 3. Open the Project Locally with VS Code Dev Containers

Follow these steps to run the project locally.

### Step 1: Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/instant-dev-environment-lab.git
```

### Step 2: Open the project folder

```bash
cd instant-dev-environment-lab
code .
```

### Step 3: Reopen the project in a container

In VS Code:

1. Open the Command Palette.
2. Search for:

```text
Dev Containers: Reopen in Container
```

3. Select the command.
4. Wait for the container to build.

---

## 4. Run the Setup Script

After the environment opens, run:

```bash
bash scripts/setup.sh
```

The setup script checks common tools and installs npm dependencies if a `package.json` file exists in the project root.

---

## 5. Run the Health Check Script

To confirm the environment is working, run:

```bash
bash scripts/health-check.sh
```

The health check script verifies that important tools are installed, including:

- Git
- Node.js
- npm
- Python 3
- curl
- ping
- tree

---

## 6. Expected Result

If everything is working correctly, the script should display `PASS` messages for the required tools.

Example:

```text
PASS: Git is installed.
PASS: Node.js is installed.
PASS: npm is installed.
PASS: Python 3 is installed.
PASS: curl is installed.
PASS: ping is installed.
PASS: tree is installed.
```

---

## 7. Recommended First Commands

After opening the project, try these commands:

```bash
pwd
ls
tree -L 2
git status
bash scripts/health-check.sh
```

These commands help confirm your current location, folder structure, Git status, and environment readiness.

---

## 8. Portfolio Note

This setup guide is included to demonstrate clear technical documentation, environment setup awareness, and basic troubleshooting preparation for IT Support and Junior Systems Administration roles.
