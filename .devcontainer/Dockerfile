# Use the official Microsoft devcontainer image as base
FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye

# Install additional system packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Switch to the node user
USER node

# Install global npm packages
RUN npm install -g \
    pnpm \
    @next/eslint-plugin-next \
    eslint \
    prettier \
    typescript \
    @types/node \
    create-next-app

# Set working directory
WORKDIR /workspaces

# Note: CLI tools for AI assistants will be installed via setup.sh
# This ensures we have the latest versions and proper authentication setup