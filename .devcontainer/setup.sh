#!/usr/bin/env bash

set -euo pipefail

echo "Setting up development environment..."

sudo apt-get update
sudo apt-get install -y --no-install-recommends curl wget git build-essential

# Keep global JavaScript tooling in sync across local Dev Containers and Codespaces
npm install -g pnpm @next/eslint-plugin-next eslint prettier typescript @types/node create-next-app

maybe_install_cli() {
	local package="$1"
	local display_name="$2"

	if npm view "$package" >/dev/null 2>&1; then
		echo "Installing $display_name..."
		npm install -g "$package"
	else
		echo "Skipping $display_name (package not available)."
	fi
}

maybe_install_cli "@anthropic-ai/claude-code" "Claude CLI"
maybe_install_cli "@google/gemini-cli" "Gemini CLI"
maybe_install_cli "@openai/codex" "Codex CLI"

git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global pull.rebase false

mkdir -p ~/workspace/projects

PROJECT_DIR="/workspaces/interview-feedback-analyzer/feedback-tracker"
if [ -d "$PROJECT_DIR" ] && [ -f "$PROJECT_DIR/package.json" ]; then
	echo "Installing workspace application dependencies (feedback-tracker)..."
	pushd "$PROJECT_DIR" >/dev/null
	if command -v pnpm >/dev/null 2>&1 && [ -f pnpm-lock.yaml ]; then
		pnpm install
	elif [ -f package-lock.json ]; then
		npm ci || npm install
	else
		npm install
	fi
	popd >/dev/null
else
	echo "feedback-tracker project directory not found or missing package.json; skipping app dependency install"
fi

echo "Development environment setup complete!"
echo "Available tools:"
echo "  - Node.js $(node --version)"
echo "  - npm $(npm --version)"
echo "  - pnpm $(pnpm --version)"
echo "  - Next.js CLI"
echo "  - GitHub CLI with Copilot extension"
echo ""
echo "Optional AI CLIs (installed when available):"
echo "  - Claude Code CLI (@anthropic-ai/claude-code)"
echo "  - Gemini CLI (@google/gemini-cli)"
echo "  - Codex CLI (@openai/codex)"
echo ""
echo "Ready for Next.js development! 🚀"