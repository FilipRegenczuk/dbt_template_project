#!/bin/bash
# Setup script for dbt-playground project for local development in IDE

set -e

echo "Setting up uv environment..."
uv sync

echo "Installing dbt-fusion..."
curl -fsSL https://public.cdn.getdbt.com/fs/install/install.sh | sh -s -- --update
echo "dbt-fusion installed successfully!"
