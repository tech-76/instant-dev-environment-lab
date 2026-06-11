# instant-dev-environment-lab

## Professional Summary

`instant-dev-environment-lab` is a GitHub portfolio project that demonstrates how to create a ready-to-use cloud development environment using GitHub Codespaces, VS Code Dev Containers, Docker, Linux terminal tools, and GitHub Actions.

The project is designed for IT Support, Technical Support, and Junior Systems/Network Administration portfolio use. It shows how a repository can be prepared so a user can open it quickly, work inside a consistent environment, run basic setup scripts, test the environment, and validate project quality through automation.

This project does not represent production administration experience. It is a hands-on lab created to demonstrate learning, documentation, troubleshooting, and technical workflow skills.

---

## Purpose of the Project

The purpose of this project is to show how instant development environments can help technical teams and learners work faster and more consistently.

Instead of manually installing tools on every computer, a dev container or Codespaces environment can provide a preconfigured workspace with the required tools, scripts, and settings already included.

This type of setup is useful for:

- IT support labs
- Technical documentation practice
- Junior systems administration learning
- Cloud-based development workflows
- Troubleshooting practice
- Consistent onboarding environments
- GitHub portfolio demonstrations

---

## Tools Used

This project uses the following tools and technologies:

| Tool | Purpose |
|---|---|
| GitHub | Version control and repository hosting |
| GitHub Codespaces | Cloud-based development environment |
| VS Code | Code editor and development workspace |
| VS Code Dev Containers | Local container-based development environment |
| Docker | Container runtime for consistent environments |
| Linux Terminal | Command-line setup, testing, and troubleshooting |
| Bash Scripts | Setup automation and health checks |
| GitHub Actions | Basic project quality checks |
| Markdown | Documentation and portfolio writing |
| Node.js | Sample API project |
| Python | Sample scripting project |
| HTML/CSS | Sample static website project |

---

## Skills Demonstrated

This project demonstrates beginner-friendly but practical skills, including:

- Creating a professional GitHub repository structure
- Using GitHub Codespaces for cloud development
- Understanding VS Code Dev Containers
- Writing basic Docker-based environment configuration
- Running Linux terminal commands
- Creating and organizing Bash scripts
- Writing setup and health-check scripts
- Documenting technical processes clearly
- Creating troubleshooting documentation
- Organizing sample projects inside one repository
- Using GitHub Actions for basic quality checks
- Presenting technical work in a clear portfolio format

---

## Folder Structure

```text
instant-dev-environment-lab/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .github/
│   └── workflows/
│       └── project-quality.yml
├── docs/
│   ├── setup-guide.md
│   ├── troubleshooting-guide.md
│   ├── commands-cheatsheet.md
│   └── environment-notes.md
├── sample-projects/
│   ├── html-css-site/
│   ├── node-api/
│   └── python-script/
├── scripts/
│   ├── setup.sh
│   └── health-check.sh
├── .gitignore
└── README.md
```

---

## How to Open in GitHub Codespaces

GitHub Codespaces allows the project to run in a browser-based development environment.

### Steps

1. Open the repository on GitHub.
2. Select the green **Code** button.
3. Select the **Codespaces** tab.
4. Click **Create codespace on main**.
5. Wait for the environment to build.
6. Open the terminal inside Codespaces.
7. Run the health check:

```bash
bash scripts/health-check.sh
```

8. Run the setup script if needed:

```bash
bash scripts/setup.sh
```

### Expected Result

The environment should open with the configured tools, extensions, scripts, and sample projects available for use.

---

## How to Run Locally with VS Code Dev Containers

This project can also run locally using VS Code and Docker.

### Requirements

Before running locally, install:

- Visual Studio Code
- Docker Desktop
- VS Code Dev Containers extension
- Git

### Steps

1. Clone the repository:

```bash
git clone https://github.com/YOUR-USERNAME/instant-dev-environment-lab.git
```

2. Open the project folder:

```bash
cd instant-dev-environment-lab
code .
```

3. In VS Code, open the Command Palette:

```text
Ctrl + Shift + P
```

On macOS:

```text
Command + Shift + P
```

4. Select:

```text
Dev Containers: Reopen in Container
```

5. Wait for the container to build.

6. Run the setup script:

```bash
bash scripts/setup.sh
```

7. Run the health check:

```bash
bash scripts/health-check.sh
```

---

## Sample Projects Included

### 1. HTML/CSS Site

A basic static website project used to practice simple front-end structure and documentation.

Example skills:

- HTML file organization
- CSS styling basics
- Static website folder structure

### 2. Node API

A simple Node.js API example used to demonstrate JavaScript tooling and local service testing.

Example skills:

- Node.js project structure
- Running an API locally
- Testing a basic endpoint

### 3. Python Script

A small Python script example used to demonstrate scripting and command-line execution.

Example skills:

- Running Python from the terminal
- Creating simple automation scripts
- Testing script output

---

## Common Troubleshooting Examples

### Codespace takes a long time to start

Possible causes:

- First-time container build
- Large dependency installation
- Temporary GitHub Codespaces delay

Suggested steps:

```bash
bash scripts/health-check.sh
```

If the issue continues, rebuild the container from the Codespaces menu.

---

### Docker is not running locally

If using VS Code Dev Containers locally, Docker Desktop must be running before reopening the project in a container.

Suggested steps:

1. Open Docker Desktop.
2. Wait for Docker to fully start.
3. Return to VS Code.
4. Run:

```text
Dev Containers: Reopen in Container
```

---

### Permission denied when running scripts

If a script does not run, update the file permissions:

```bash
chmod +x scripts/setup.sh
chmod +x scripts/health-check.sh
```

Then run:

```bash
./scripts/setup.sh
./scripts/health-check.sh
```

---

### Node command not found

If Node.js is not available, confirm that the dev container built correctly.

Run:

```bash
node --version
npm --version
```

If the commands fail, rebuild the container.

---

### Python command not found

Run:

```bash
python3 --version
```

If Python is missing, check the Dockerfile and rebuild the container.

---

### GitHub Actions workflow fails

Common causes include:

- Missing script permissions
- Incorrect folder paths
- Markdown formatting issues
- Commands failing inside the workflow

Suggested steps:

1. Open the failed workflow run in GitHub.
2. Review the error message.
3. Fix the related file or command.
4. Commit and push the update.

---

## What I Learned

Through this project, I practiced how to:

- Structure a technical GitHub portfolio repository
- Use Codespaces to create a fast cloud-based workspace
- Understand how Dev Containers help standardize development environments
- Use Docker configuration files in a beginner-friendly lab
- Create basic shell scripts for setup and testing
- Write clear documentation for technical users
- Organize sample projects for HTML/CSS, Node.js, and Python
- Use GitHub Actions to check basic project quality
- Troubleshoot common environment setup issues

This project helped me understand how consistent environments can reduce setup problems and make technical work easier to reproduce.

---

## Future Improvements

Planned future improvements include:

- Add more detailed Linux command examples
- Add a networking troubleshooting lab
- Add a DNS and web hosting support example
- Add a simple help desk ticket documentation example
- Add automated Markdown linting
- Add more GitHub Actions checks
- Add screenshots of Codespaces setup
- Add a short demo video or GIF
- Add a beginner-friendly diagram explaining how Codespaces and Dev Containers work
- Expand the Node.js and Python sample projects

---

## Portfolio Note

This repository was created as a learning and portfolio project for IT Support, Technical Support, and Junior Systems/Network Administration roles.

It is intended to show hands-on practice with cloud development environments, container-based workspaces, documentation, scripting, troubleshooting, and GitHub workflow basics.
