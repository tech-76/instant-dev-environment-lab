# Troubleshooting Ticket: Permission Denied When Running Script

## Issue Summary

The user attempted to run a project script and received a `Permission denied` error.

Example:

```text
./scripts/health-check.sh: Permission denied
```

## User Impact

The user could not run the setup or health check script directly. This prevented them from validating the development environment using the intended project workflow.

## Environment

- Platform: GitHub Codespaces or Linux-based Dev Container
- Shell: Bash
- Repository: `instant-dev-environment-lab`
- Scripts involved:
  - `scripts/setup.sh`
  - `scripts/health-check.sh`

## Troubleshooting Steps

1. Confirmed the script file existed:

```bash
ls scripts
```

2. Checked the current folder:

```bash
pwd
```

3. Reviewed file permissions:

```bash
ls -la scripts
```

4. Confirmed that the script could still be run with Bash:

```bash
bash scripts/health-check.sh
```

5. Added execute permission to both scripts:

```bash
chmod +x scripts/setup.sh
chmod +x scripts/health-check.sh
```

6. Tested the scripts again:

```bash
./scripts/setup.sh
./scripts/health-check.sh
```

7. Checked Git status to confirm the permission change could be committed:

```bash
git status
```

## Root Cause

The script files existed but did not have executable permissions. This prevented the scripts from running with the `./script-name.sh` format.

## Resolution

Execute permissions were added using `chmod +x`. The scripts then ran successfully.

## Prevention Notes

- Use `chmod +x` after creating new shell scripts.
- Test scripts using both `bash script.sh` and `./script.sh`.
- Commit executable permission changes to Git when needed.
- Include script execution steps in project documentation.

## Skills Demonstrated

- Linux file permission troubleshooting
- Bash script execution
- Command-line diagnostics
- Git status review
- Beginner-friendly user support
- Documentation of cause and resolution
