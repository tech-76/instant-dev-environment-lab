# Commands Cheatsheet

## Project: instant-dev-environment-lab

This cheatsheet lists useful beginner commands for working inside a Linux-based development environment, GitHub Codespaces, or VS Code Dev Containers.

The commands are useful for IT Support, Technical Support, and Junior Systems/Network Administration practice.

---

## 1. Linux Navigation Commands

### Show current folder

```bash
pwd
```

### List files

```bash
ls
```

### List files with details

```bash
ls -la
```

### Change directory

```bash
cd folder-name
```

### Go back one folder

```bash
cd ..
```

### Create a folder

```bash
mkdir new-folder
```

### Create a file

```bash
touch file-name.txt
```

### View a file

```bash
cat file-name.txt
```

### View folder structure

```bash
tree
```

### View only two folder levels

```bash
tree -L 2
```

---

## 2. File and Folder Management

### Copy a file

```bash
cp source.txt destination.txt
```

### Move or rename a file

```bash
mv old-name.txt new-name.txt
```

### Remove a file

```bash
rm file-name.txt
```

### Remove an empty folder

```bash
rmdir folder-name
```

### Remove a folder and its contents

```bash
rm -rf folder-name
```

Use `rm -rf` carefully because it deletes files permanently in the current environment.

---

## 3. Git Commands

### Check repository status

```bash
git status
```

### View current branch

```bash
git branch
```

### Add all changed files

```bash
git add .
```

### Commit changes

```bash
git commit -m "Describe the change"
```

### Push changes to GitHub

```bash
git push
```

### Pull latest changes

```bash
git pull
```

### View commit history

```bash
git log --oneline
```

### Check remote repository

```bash
git remote -v
```

---

## 4. Docker Basics

### Check Docker version

```bash
docker --version
```

### List running containers

```bash
docker ps
```

### List all containers

```bash
docker ps -a
```

### List Docker images

```bash
docker images
```

### Build an image

```bash
docker build -t image-name .
```

### Run a container

```bash
docker run image-name
```

### Stop a container

```bash
docker stop container-id
```

Docker may not be available inside every Codespaces environment unless Docker-in-Docker or Docker support is configured.

---

## 5. npm and Node.js Commands

### Check Node.js version

```bash
node --version
```

### Check npm version

```bash
npm --version
```

### Install dependencies

```bash
npm install
```

### Start a Node.js project

```bash
npm start
```

### Run a script from package.json

```bash
npm run script-name
```

### Create a package.json file

```bash
npm init -y
```

---

## 6. Python Commands

### Check Python version

```bash
python3 --version
```

### Run a Python script

```bash
python3 script.py
```

### Run a simple Python command

```bash
python3 -c "print('Python is working')"
```

### Create a virtual environment

```bash
python3 -m venv .venv
```

### Activate a virtual environment

```bash
source .venv/bin/activate
```

### Install a Python package

```bash
pip install package-name
```

---

## 7. Networking Checks

### Ping a host

```bash
ping google.com
```

### Ping four times only

```bash
ping -c 4 google.com
```

### DNS lookup with nslookup

```bash
nslookup github.com
```

### DNS lookup with dig

```bash
dig github.com
```

### Test a website response with curl

```bash
curl -I https://github.com
```

### Download a file with curl

```bash
curl -O https://example.com/file.txt
```

### Download a file with wget

```bash
wget https://example.com/file.txt
```

### Show network interfaces

```bash
ifconfig
```

or:

```bash
ip addr
```

---

## 8. Script Commands for This Project

### Run setup script

```bash
bash scripts/setup.sh
```

### Run health check

```bash
bash scripts/health-check.sh
```

### Make scripts executable

```bash
chmod +x scripts/setup.sh scripts/health-check.sh
```

### Run executable scripts

```bash
./scripts/setup.sh
./scripts/health-check.sh
```

---

## 9. Helpful Troubleshooting Commands

### Show current directory

```bash
pwd
```

### Confirm a file exists

```bash
ls scripts
```

### Search for text in files

```bash
grep -R "search-text" .
```

### Show command location

```bash
which git
which node
which npm
which python3
```

### Show environment path

```bash
echo $PATH
```

---

## Portfolio Note

This cheatsheet demonstrates comfort with common Linux, Git, Docker, npm, Python, and networking commands used in technical support and beginner systems administration workflows.
