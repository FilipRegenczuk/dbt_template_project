# dbt-playground

For playing around with DBT models, tests, macros etc.

## Prerequisites

- [uv](https://github.com/astral-sh/uv) - Fast Python package installer and resolver
- `curl` - Usually pre-installed on macOS/Linux
- `bash` - Usually pre-installed on macOS/Linux

## Local Installation

### Step 1: Install uv (if not already installed)

If you don't have `uv` installed, install it using:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Or using Homebrew on macOS:

```bash
brew install uv
```

### Step 2: Clone the repository (if applicable)

```bash
git clone <repository-url>
cd dbt_playground
```

### Step 3: Run the setup script

Run the setup script to install the uv environment and dbt-fusion:

```bash
./setup.sh
```

This script will:
1. Set up the uv Python environment (`uv sync`)
2. Install dbt-fusion into the uv virtual environment (not globally)



## Usage

After installation, you can use:

- **dbt commands**: Run dbt commands through uv:
  ```bash
  uv run dbt --version
  uv run dbt run
  uv run dbt test
  ```

- **dbt-fusion commands**: Use `dbt` through uv (dbt-fusion is installed as `dbt` in the uv environment):
  ```bash
  uv run dbt --version
  uv run dbt run
  ```
  
  Note: The dbt-fusion installer installs a binary named `dbt` (which is dbt-fusion, not dbt-core).

## Project Structure

```
dbt_playground/
├── models/          # dbt models
│   ├── staging/     # Staging models
│   └── marts/       # Mart models
├── tests/           # dbt tests
├── macros/          # dbt macros
├── seeds/           # Seed files
├── snapshots/       # Snapshot definitions
├── analyses/        # Analysis queries
├── dbt_project.yml  # dbt project configuration
├── pyproject.toml   # Python project configuration
└── setup.sh         # Setup script
```
