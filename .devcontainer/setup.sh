#!/bin/bash

# Setup script for devcontainer
echo "Setting up development environment..."

# Update package lists
sudo apt-get update

# Install additional system dependencies
sudo apt-get install -y curl wget git build-essential

# Install pnpm (faster package manager for Node.js)
npm install -g pnpm

# Install global development tools
npm install -g @next/eslint-plugin-next
npm install -g eslint
npm install -g prettier
npm install -g typescript
npm install -g @types/node

# Install Claude CLI (Anthropic's CLI tool)
echo "Installing Claude CLI..."
npm install -g @anthropic-ai/claude-code

# Install Gemini CLI (Google's CLI tool)
echo "Installing Gemini CLI..."
npm install -g @google/gemini-cli

# Install Codex CLI (OpenAI's CLI tool) 
echo "Installing Codex CLI..."
npm install -g @openai/codex

# Set up git configuration for the container
git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global pull.rebase false

# Create common project directories
mkdir -p ~/workspace/projects

# Install Next.js CLI globally
npm install -g create-next-app

echo "Development environment setup complete!"
echo "Available tools:"
echo "  - Node.js $(node --version)"
echo "  - npm $(npm --version)"
echo "  - pnpm $(pnpm --version)"
echo "  - Next.js CLI"
echo "  - GitHub CLI with Copilot extension"
echo "  - Claude Code CLI (@anthropic-ai/claude-code)"
echo "  - Gemini CLI (@google/gemini-cli)" 
echo "  - Codex CLI (@openai/codex)"
echo ""
echo "VS Code extensions installed:"
echo "  - GitHub Copilot"
echo "  - GitHub Copilot Chat"
echo "  - Claude Code"
echo "  - Next.js and React development tools"
echo ""
echo "Ready for Next.js development! 🚀"