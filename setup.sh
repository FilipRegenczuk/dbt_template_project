#!/bin/bash
# Setup script for dbt-playground project for local development in IDE

set -e

echo "Setting up uv environment..."
uv sync

# Get the uv virtual environment bin directory
VENV_BIN="$(uv run python -c "import sys; import os; print(os.path.dirname(sys.executable))" 2>/dev/null || echo ".venv/bin")"

echo "Installing dbt-fusion..."
curl -fsSL https://public.cdn.getdbt.com/fs/install/install.sh | sh -s -- --update --to "$VENV_BIN"
echo "dbt-fusion installed successfully to $VENV_BIN!"
