#!/bin/sh
# Activate the python environment and starts the Python API MCP Server
# Compatible with sh/bash/zsh (no shell-specific features).

# Project path - get the directory where this script is located
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PROJECT_DIR" || exit 1

# Create the virtual environment if it does not exist yet
if [ ! -d ".venv" ]; then
    echo "No .venv found — creating one..."
    python3 -m venv .venv || { echo "Failed to create venv"; exit 1; }
    .venv/bin/pip install -e .
fi

# Activate the virtual environment
. .venv/bin/activate

# Start the MCP Server
python mcp_system_monitor_server.py

# Deactivate the virtual environment at the end
deactivate
