#!/usr/bin/env bash
set -euo pipefail

git config --local core.hooksPath .githooks
echo "Git hooks enabled for this repository (.githooks)."
