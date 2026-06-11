# Troubleshooting Guide

## Project: instant-dev-environment-lab

This guide lists common setup and environment issues that may occur when using GitHub Codespaces, VS Code Dev Containers, Docker, Node.js, Python, and Git.

The troubleshooting steps are written for beginner-friendly IT Support and Technical Support practice.

---

## 1. Codespace Not Starting

### Common Symptoms

- Codespace stays on a loading screen
- Codespace fails during creation
- Browser shows a connection issue
- Terminal does not open

### Possible Causes

- Temporary GitHub Codespaces issue
- Slow internet connection
- Container build taking longer than expected
- Repository configuration issue

### Suggested Fixes

1. Refresh the browser.
2. Wait a few minutes and try again.
3. Stop and restart the Codespace.
4. Rebuild the Codespace container.
5. Review the Codespaces creation logs.

### Useful Check

After the Codespace opens, run:

```bash
bash scripts/health-check.sh
```

---

## 2. Dev Container Build Failing

### Common Symptoms

- VS Code shows a container build error
- Docker build fails
- The container does not reopen
- Error appears in the Dev Containers log

### Possible Causes

- Docker Desktop is not running
- Dockerfile has a package installation issue
- Internet connection failed during package download
- Incorrect path in `devcontainer.json`
- Missing script referenced by `postCreateCommand`

### Suggested Fixes

1. Confirm Docker Desktop is running.
2. Reopen VS Code.
3. Run:

```text
Dev Containers: Rebuild Container
```

4. Review the Dev Containers build logs.
5. Confirm these files exist:

```text
.devcontainer/devcontainer.json
.devcontainer/Dockerfile
scripts/setup.sh
scripts/health-check.sh
```

---

## 3. Permission Denied When Running Scripts

### Common Symptoms

```text
Permission denied
```

or:

```text
./scripts/setup.sh: Permission denied
```

### Possible Cause

The script file does not have execute permission.

### Suggested Fix

Run:

```bash
chmod +x scripts/setup.sh
chmod +x scripts/health-check.sh
```

Then run:

```bash
./scripts/setup.sh
./scripts/health-check.sh
```

Alternative command:

```bash
bash scripts/setup.sh
bash scripts/health-check.sh
```

Using `bash` does not require the file to be executable.

---

## 4. Port Already in Use

### Common Symptoms

- A Node.js app fails to start
- Terminal shows an error such as:

```text
EADDRINUSE
```

or:

```text
Port 3000 is already in use
```

### Possible Cause

Another process is already using the same port.

### Suggested Fixes

Check what is using the port:

```bash
lsof -i :3000
```

If `lsof` is unavailable, try:

```bash
netstat -tulpn
```

Stop the running process if appropriate, or change the application port.

Example:

```bash
PORT=3001 npm start
```

---

## 5. Node or npm Not Found

### Common Symptoms

```text
node: command not found
```

or:

```text
npm: command not found
```

### Possible Causes

- Node.js was not installed
- Container build failed
- The environment path is incorrect

### Suggested Fixes

Check versions:

```bash
node --version
npm --version
```

If the commands fail:

1. Rebuild the dev container.
2. Review the Dockerfile.
3. Confirm Node.js and npm are included in the package installation section.

---

## 6. Python Not Found

### Common Symptoms

```text
python3: command not found
```

or:

```text
python: command not found
```

### Possible Causes

- Python was not installed
- The command is `python3` instead of `python`
- Container build failed

### Suggested Fixes

Check Python:

```bash
python3 --version
```

Run a basic Python test:

```bash
python3 -c "print('Python is working')"
```

If Python is missing, rebuild the container and review the Dockerfile.

---

## 7. Git Authentication Issues

### Common Symptoms

- Git push fails
- Authentication error appears
- GitHub asks for credentials repeatedly
- Permission denied error appears when pushing

### Possible Causes

- GitHub authentication is not complete
- Wrong GitHub account is connected
- Repository remote URL is incorrect
- No permission to push to the repository

### Suggested Fixes

Check Git status:

```bash
git status
```

Check remote URL:

```bash
git remote -v
```

Confirm Git identity:

```bash
git config user.name
git config user.email
```

Set Git identity if needed:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

If using GitHub Codespaces, confirm the Codespace is connected to the correct GitHub account.

---

## 8. Health Check Fails

### Common Symptoms

The health check script displays one or more `FAIL` messages.

### Suggested Fix

Run:

```bash
bash scripts/health-check.sh
```

Review the failed tool name, then check the Dockerfile or local setup.

Example:

```text
FAIL: tree is not installed or not available in PATH.
```

This means the tool is missing or the environment did not build correctly.

---

## 9. General Troubleshooting Process

A simple troubleshooting process:

1. Read the error message carefully.
2. Identify the tool or file involved.
3. Confirm the file path.
4. Check whether the command exists.
5. Review logs.
6. Try the command again.
7. Document the fix.

Useful commands:

```bash
pwd
ls
tree -L 2
git status
bash scripts/health-check.sh
```

---

## Portfolio Note

This troubleshooting guide demonstrates practical documentation skills, beginner-level diagnostic thinking, and awareness of common environment setup issues.
