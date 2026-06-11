# Troubleshooting Ticket: Node.js Port Conflict

## Issue Summary

The Node.js sample API failed to start because the selected port was already in use.

Example error:

```text
Error: listen EADDRINUSE: address already in use :::3000
```

## User Impact

The user could not start the sample Node API or test the available routes, including the home route, health check route, and support ticket sample route.

## Environment

- Platform: GitHub Codespaces or VS Code Dev Container
- Project folder: `sample-projects/node-api`
- Runtime: Node.js
- Framework: Express
- Default port: `3000`

## Troubleshooting Steps

1. Opened the Node API project folder:

```bash
cd sample-projects/node-api
```

2. Confirmed dependencies were installed:

```bash
npm install
```

3. Attempted to start the API:

```bash
npm start
```

4. Reviewed the terminal error message and identified `EADDRINUSE`.
5. Checked for processes using port `3000`:

```bash
lsof -i :3000
```

If `lsof` was unavailable, checked active network connections:

```bash
netstat -tulpn
```

6. Stopped the conflicting process when appropriate.
7. Restarted the API.
8. If the conflict continued, started the API with a different port:

```bash
PORT=3001 npm start
```

9. Tested the health check route:

```bash
curl http://localhost:3001/health
```

## Root Cause

Another process was already using port `3000`, which prevented the Node.js Express server from starting on the default port.

## Resolution

The conflicting process was stopped, or the API was started on an alternate port using the `PORT` environment variable.

## Prevention Notes

- Check whether a port is already in use before starting a local service.
- Use environment variables to change ports when testing.
- Document default ports in each sample project README.
- Stop unused local services after testing.

## Skills Demonstrated

- Node.js service troubleshooting
- Port conflict identification
- Basic network command usage
- Express API testing
- curl-based endpoint validation
- Clear incident documentation
