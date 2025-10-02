# Development Container Configuration

This repository includes a devcontainer configuration optimized for Next.js web development with AI coding assistants.

## What's Included

### Base Environment

- **Node.js 20** with TypeScript support
- **pnpm** for fast package management
- **Git** with GitHub CLI

### VS Code Extensions

- **GitHub Copilot** & **Copilot Chat** - AI pair programming
- **Claude Code** (`anthropic.claude-code`) - Anthropic's AI coding assistant
- **Next.js/React Tools** - Enhanced development experience
- **ESLint & Prettier** - Code formatting and linting
- **Tailwind CSS IntelliSense** - Utility-first CSS framework support
- **Auto Rename Tag** - Automatically rename paired HTML/JSX tags
- **Path Intellisense** - Autocomplete for file paths

### CLI Tools

- **Claude Code CLI** (`@anthropic-ai/claude-code`) - Anthropic's CLI tool
- **Gemini CLI** (`@google/gemini-cli`) - Google's AI CLI tool *(installed when published)*
- **Codex CLI** (`@openai/codex`) - OpenAI's coding assistant CLI *(installed when published)*
- **GitHub CLI** with Copilot extensions

### Development Tools

- **ESLint** with Next.js plugin
- **Prettier** for code formatting
- **TypeScript** compiler
- **Create Next App** CLI

## Getting Started

### Using GitHub Codespaces

1. Click the "Code" button in your repository
2. Select "Codespaces" tab
3. Click "Create codespace on main"
4. Wait for the container to build and setup to complete

### Using VS Code Dev Containers

1. Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
2. Open the repository in VS Code
3. Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
4. Type "Dev Containers: Reopen in Container"
5. Select the command and wait for the container to build

## Port Forwarding

The following ports are automatically forwarded:

- **3000** - Next.js development server (default)
- **3001** - Alternative development server
- **8080** - Additional web server port

## Authentication Setup

After the container starts, you may need to authenticate with the AI services:

### GitHub Copilot

Copilot should work automatically if you're signed into GitHub in VS Code.

### Claude CLI

```bash
# Authentication may vary - check @anthropic-ai/claude-code documentation
anthropic auth login
```

### Gemini CLI

```bash
# Start Gemini CLI and follow OAuth flow
gemini
```

### Codex CLI

```bash
# Check @openai/codex documentation for authentication
codex auth login
```

## Creating a New Next.js Project

Once your devcontainer is running:

```bash
# Create a new Next.js app
npx create-next-app@latest my-app --typescript --tailwind --eslint --app

# Navigate to your project
cd my-app

# Start development server
npm run dev
# or
pnpm dev
```

## Customization

- **Extensions**: Modify the `extensions` array in `.devcontainer/devcontainer.json`
- **System packages**: Update the `Dockerfile`
- **CLI tools**: Modify `.devcontainer/setup.sh`
- **VS Code settings**: Update the `settings` object in the devcontainer configuration

## Troubleshooting

### Container won't start

- Ensure Docker is running on your machine
- Try rebuilding the container: `Dev Containers: Rebuild Container`

### Extensions not loading

- Check the extension IDs in `devcontainer.json`
- Some extensions may require manual installation or authentication

### CLI tools not working

- Check if they were installed correctly: `which claude`, `which gemini`, etc.
- Re-run the setup script: `bash .devcontainer/setup.sh`

### Using SSH keys

- By default, the container relies on the forwarded SSH agent from VS Code/Codespaces.
- If you need to mount local SSH keys, create a `.devcontainer/devcontainer.local.json` with a `mounts` entry tailored to your host platform (for example, `${localEnv:USERPROFILE}` on Windows).

## Performance Tips

- Use `pnpm` instead of `npm` for faster package installation
- The container includes volume mounts for Git configuration and SSH keys
- Consider using the GitHub CLI for repository operations
