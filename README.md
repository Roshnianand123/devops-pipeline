# Simple DevOps Automation Pipeline

An automated CI/CD and deployment pipeline demonstrating the core principles of continuous integration, automated testing, and deployment scripting.

---

## Project Overview

This project implements a complete beginner-to-intermediate DevOps lifecycle:
1. **Application Logic**: Python application providing greeting functionality.
2. **Automated Testing**: Unit tests using `pytest` to guarantee code correctness.
3. **CI Pipeline**: GitHub Actions workflow triggering on push and pull requests to validate builds automatically.
4. **Deployment Automation**: Linux shell script (`deploy.sh`) acting as a deployment gatekeeper that checks prerequisites, runs tests, executes the app, and confirms deployment.
5. **Git Branching Workflow**: Clean branching model with `develop` feature branch and Pull Request merge into `main`.

---

## Project Structure

```text
devops-pipeline/
├── .github/
│   └── workflows/
│       └── ci.yml           # GitHub Actions CI workflow
├── app.py                   # Python application entrypoint
├── test_app.py              # Pytest unit tests
├── deploy.sh                # Automated Linux shell deployment script
├── requirements.txt         # Project dependencies
└── README.md                # Comprehensive documentation
```

---

## DevOps Workflow

```text
Development ──► Git Version Control ──► Automated Testing ──► CI Automation ──► Deployment Gate & Run
   (app.py)        (develop -> main)          (pytest)       (GitHub Actions)       (deploy.sh)
```

---

## Getting Started

### 1. Prerequisites
- Python 3.10+ installed
- Git Bash or Linux shell environment

### 2. Installation
Clone the repository and install required dependencies:
```bash
git clone https://github.com/Roshnianand123/devops-pipeline.git
cd devops-pipeline
pip install -r requirements.txt
```

### 3. Running Unit Tests
Execute the automated test suite manually:
```bash
python -m pytest -v
```

### 4. Running the Automated Deployment Script
Run the automated deployment script through bash:
```bash
bash deploy.sh
```

**Expected Script Execution Flow:**
1. Checks whether Python runtime is available.
2. Executes `python -m pytest` test suite.
3. Halts immediately with exit code 1 if tests fail (deployment safety gate).
4. Executes `python app.py` upon successful test passage.
5. Displays `Deployment successful!`.

---

## Git Branching & CI/CD Workflow

1. Created Git repository with initial commit on `main`.
2. Created `develop` branch for feature additions.
3. Developed deployment automation script on `develop`.
4. Opened Pull Request #1 from `develop` into `main`.
5. Merged Pull Request into `main` after CI checks succeeded.
6. GitHub Actions workflow (`.github/workflows/ci.yml`) runs tests automatically on every push and pull request.
