# Node API

## What This Project Does

This is a simple Express API sample for the `instant-dev-environment-lab` portfolio project.

It includes:

- A home route
- A health check route
- A sample support ticket route

The API is beginner-friendly and demonstrates how a small service can return structured JSON responses.

---

## Routes

### Home Route

```text
GET /
```

Returns a welcome message and project summary.

### Health Check Route

```text
GET /health
```

Returns a simple service health status.

### Support Ticket Sample Route

```text
GET /tickets/sample
```

Returns a sample IT support ticket response.

---

## How to Run It

From this folder, install dependencies:

```bash
npm install
```

Start the server:

```bash
npm start
```

Open a browser or use curl:

```bash
curl http://localhost:3000/
curl http://localhost:3000/health
curl http://localhost:3000/tickets/sample
```

---

## Skills Demonstrated

This sample project demonstrates:

- Basic Node.js project structure
- Express server setup
- JSON API responses
- Health check endpoint design
- Simple support-ticket data modeling
- Local service testing with curl

---

## Portfolio Note

This project is included to show beginner-level API understanding and basic troubleshooting-friendly service design.
