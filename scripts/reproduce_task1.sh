#!/usr/bin/env bash

# Task 1: Build SolTG suite from a clean checkout, run all regression contracts, and generate reports.
#
# Usage:
#   git clone --recurse-submodules <this repo> SolTG && cd SolTG
#   bash scripts/reproduce_task1.sh
#
# Environment variables (all optional):
#   BACKEND_REF  - Commit/branch of SolTG-backend to build (default: origin/master).
#                  Use 'pinned' to build the commit that the submodule currently points to.
#   JOBS         - Number of parallel build jobs (default: number of CPUs).
#   VENV         - Python virtual environment path to install SolTG into (default: ./.venv).
#   RUN          - Name of the results output folder (default: baseline).
#   TIMEOUT, SOLC, WORK - Passed to scripts/run_eval.sh (defaults: 120, 0.8.28, ~/soltg-eval-runs).
#
# Outputs:
#   results/$RUN/report/1_html_report.html  - SolTG detailed HTML report
#   results/$RUN/index.html                 - Summary table per contract
#   results/$RUN/summary.csv, run_info.txt, run.log - Additional run data

set -euo pipefail

# Resolve repository root directory (parent of the script's directory)
REPO="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO"
BACKEND="$REPO/SolTG-backend"
BACKEND_REF="${BACKEND_REF:-origin/master}"

# Determine number of parallel build jobs; fallback to 4 if detection fails
JOBS="${JOBS:-$( (sysctl -n hw.ncpu || nproc) 2>/dev/null || echo 4)}"

VENV="${VENV:-$REPO/.venv}"
RUN="${RUN:-baseline}"

# Print a nicely formatted step header
step() { printf '\n=== %s ===\n' "$*"; }

step "0. Prerequisites"
missing=0

# Verify essential commands are available
for tool in git cmake make python3 docker forge genhtml script; do
  if ! command -v "$tool" >/dev/null; then
    echo "missing: $tool"
    missing=1
  fi
done

# On macOS, ensure required Homebrew packages are installed
if [ "$(uname)" = Darwin ]; then
  for pkg in boost gmp; do
    if ! brew list --versions "$pkg" >/dev/null 2>&1; then
      echo "missing: brew install $pkg"
      missing=1
    fi
  done
fi

# Exit if any required tools are missing
if [ $missing -ne 0 ]; then
  echo "Please install the missing tools listed above before proceeding."
  exit 1
fi

# Confirm Docker daemon is running
if ! docker info >/dev/null 2>&1; then
  echo "Docker is not running. Please start Docker and try again."
  exit 1
fi

step "1. Initialize and checkout SolTG-backend submodule"
# Initialize and update submodule recursively
git submodule update --init --recursive

# Checkout specific backend commit/branch if not pinned
if [ "$BACKEND_REF" != pinned ]; then
  git -C "$BACKEND" fetch --quiet origin
  git -C "$BACKEND" checkout --quiet "$BACKEND_REF"
fi

echo "Building SolTG-backend at commit $(git -C "$BACKEND" rev-parse --short HEAD)"

step "1b. Build tgnonlin binary (initial build downloads and builds Z3, which can take 20-40 minutes)"
mkdir -p "$BACKEND/build"
cd "$BACKEND/build"

# CMakeLists.txt requires a minimum policy version < 4; set a compatible minimum policy
cmake_options=(-DCMAKE_POLICY_VERSION_MINIMUM=3.5)

# Run CMake configuration and log output
cmake .. "${cmake_options[@]}" >cmake.log 2>&1 || { tail -30 cmake.log; exit 1; }

# Initial build step (should download and build bundled Z3)
cmake --build . -j "$JOBS" >build1.log 2>&1 || true

# Rerun CMake to detect Z3 now present
cmake .. "${cmake_options[@]}" >>cmake.log 2>&1

# Final build step for tgnonlin
cmake --build . -j "$JOBS" >build2.log 2>&1 || { tail -30 build2.log; exit 1; }

TG="$BACKEND/build/tools/nonlin/tgnonlin"

# Confirm the tgnonlin binary exists and is executable
if [ ! -x "$TG" ]; then
  echo "Expected binary not found at $TG"
  tail -30 build2.log
  exit 1
fi

file "$TG"

cd "$REPO"

step "2. Deploy the new tgnonlin binary and install SolTG"

# Determine destination binary filepath based on OS
DEPLOY_DEST=deps/tgnonlin
if [ "$(uname)" = Linux ]; then
  DEPLOY_DEST=deps/tgnonlin_linux
fi

# Backup existing binary if no backup exists
if [ ! -f "$DEPLOY_DEST.prebuilt" ]; then
  cp "$DEPLOY_DEST" "$DEPLOY_DEST.prebuilt" || true
fi

# Copy freshly built binary to deployment destination
cp "$TG" "$DEPLOY_DEST"

# Create Python virtual environment if it doesn't exist
if [ ! -d "$VENV" ]; then
  python3 -m venv "$VENV"
fi

# Activate virtual environment (disable shellcheck warning for sourcing)
# shellcheck disable=SC1091
source "$VENV/bin/activate"

# Upgrade pip and install SolTG package in-place (not editable mode to correctly resolve deps/ path)
python3 -m pip install -q --upgrade pip
python3 -m pip install -q ./

# Verify installed binary matches the new build
INSTALLED_PATH="$(python3 -c 'import sys; print(sys.prefix)')/deps/$(basename "$DEPLOY_DEST")"
if ! cmp -s "$TG" "$INSTALLED_PATH"; then
  echo "Installed binary $INSTALLED_PATH does not match the newly built one."
  exit 1
fi

echo "SolTG uses binary at $INSTALLED_PATH"

# Display SolTG version (expected to exit with code 1 by design)
solTg -v || true

step "2b. Pull Docker image for the encoder"
docker pull usiverify/testgen:latest

step "3-5. Create fresh Foundry project, run regression contracts, and collect results"
bash "$REPO/scripts/run_eval.sh" "$RUN"

# Inform user where the interactive results page can be found
echo
echo "Open results in your browser at: $REPO/results/$RUN/index.html"
