# VS Code AI Integration Feedback Analyzer

## 📋 Interview Task Overview

Welcome to the VS Code interview project!

Your task is to build a web application that tracks and analyzes feedback themes about VS Code's AI integrations to aid the product team in better prioritization and decision-making.

### 🎯 Project Goals

Build a web application that can:

- **Analyze feedback themes** from various sources about VS Code's AI features
- **Visualize feedback trends** and common pain points
- **Categorize and track** user sentiment and feature requests
- **Provide insights** into what users love and what needs improvement

### 📊 Data Sources Available

1. **Sample CSV Data** - Survey feedback about VS Code AI features
2. **Hacker News Discussions** - Threads discussing VS Code and AI integration
3. **GitHub Issues** - VS Code repository issues related to AI and user feedback
4. **Additional Sources** - Feel free to incorporate other relevant data sources

### 🛠️ Technology Stack

You have full freedom to choose your tech stack, but we've provided a **Next.js starter project** in this repository with a pre-configured development environment if you'd like to use it.

**Suggested Stack (Optional):**

- **Frontend**: Next.js, React, TypeScript
- **Styling**: Tailwind CSS

## 🚀 Quick Setup Instructions

### ⚡ Option 1: GitHub Codespaces (Recommended)

**⚠️ IMPORTANT: Please set this up BEFORE your interview!**

1. **Fork this repository** to your GitHub account
2. **Create a Codespace**:
   - Click the green **"Code"** button
   - Select **"Codespaces"** tab
   - Click **"Create codespace on main"**
3. **Wait for setup** (first-time setup takes 5-10 minutes)
4. **Verify installation**:
   ```bash
   node --version  # Should show v20.x
   npm --version   # Should show npm version
   ```

### 🖥️ Option 2: Local Development with VS Code

1. **Prerequisites**:

   - Install [VS Code](https://code.visualstudio.com/)
   - Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
   - Install [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

2. **Setup**:

   ```bash
   git clone <your-forked-repo-url>
   cd interview-feedback-analyzer
   ```

3. **Open in Dev Container**:
   - Open the project in VS Code
   - Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
   - Type: **"Dev Containers: Reopen in Container"**
   - Wait for container to build and start

## 🏗️ Development Environment

### What's Included

The devcontainer comes pre-configured with:

**🤖 AI Coding Assistants:**

- GitHub Copilot & Copilot Chat
- Claude Code CLI (`@anthropic-ai/claude-code`)
- Gemini CLI (`@google/gemini-cli`)
- Codex CLI (`@openai/codex`)

**⚙️ Development Tools:**

- Node.js 20 with TypeScript
- Next.js CLI and development tools
- ESLint, Prettier for code quality
- Tailwind CSS for styling
- pnpm for fast package management

**🔌 VS Code Extensions:**

- Next.js and React development tools
- Auto-formatting and linting
- Path intellisense and productivity extensions

### 🌐 Port Forwarding

The following ports are automatically available:

- **3000** - Next.js development server
- **3001** - Alternative development server
- **8080** - Additional services

## 🔍 Data Sources & Research

### Survey Feedback

- Attached is a sample CSV with survey feedback about VS Code's agent mode

### Hacker News Threads

- Search for discussions about "VS Code AI" or "GitHub Copilot"
- Look for user experiences and feature requests

### GitHub Issues

- Check the [VS Code repository](https://github.com/microsoft/vscode/issues)
- Filter for AI-related issues and user feedback
- Look for feature requests and bug reports
