const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware to allow JSON responses
app.use(express.json());

// Home route
app.get("/", (req, res) => {
  res.json({
    message: "Welcome to the Instant Dev Environment Node API.",
    project: "instant-dev-environment-lab",
    purpose: "Beginner API sample for IT support and technical support portfolio practice."
  });
});

// Health check route
app.get("/health", (req, res) => {
  res.json({
    status: "PASS",
    service: "node-api",
    uptimeSeconds: Math.round(process.uptime()),
    timestamp: new Date().toISOString()
  });
});

// Support ticket sample route
app.get("/tickets/sample", (req, res) => {
  res.json({
    ticketId: "TICKET-1001",
    category: "Email Support",
    priority: "Medium",
    status: "Open",
    issue: "User reports they cannot access email from a browser.",
    troubleshootingSteps: [
      "Confirmed the user can access other websites.",
      "Checked browser cache and cookies.",
      "Verified login URL.",
      "Recommended password reset if login continues to fail."
    ],
    escalationRequired: false
  });
});

// Start server
app.listen(PORT, () => {
  console.log(`Node API is running on port ${PORT}`);
  console.log(`Home route: http://localhost:${PORT}/`);
  console.log(`Health check: http://localhost:${PORT}/health`);
  console.log(`Sample ticket: http://localhost:${PORT}/tickets/sample`);
});
