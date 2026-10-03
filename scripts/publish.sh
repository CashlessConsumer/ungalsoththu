#!/usr/bin/env bash
# Sync notes -> site, rebuild, commit and push to GitHub Pages.
# Designed for the daily/weekly automations: idempotent, single commit, no-ops when nothing changed.
set -euo pipefail
cd "$(dirname "$0")/.."
python3 scripts/build.py
git add -A
if git diff --cached --quiet; then
  echo "publish: no changes"
else
  git commit -q -m "publish: sync briefs and reports $(date -u +%F)"
  git push -q origin main
  echo "publish: pushed $(git rev-parse --short HEAD)"
fi
