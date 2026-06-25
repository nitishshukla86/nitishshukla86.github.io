#!/usr/bin/env bash
# Build / serve the al-folio site locally.
# Usage:
#   ./serve.sh          # build once
#   ./serve.sh serve    # live server at http://localhost:4000 (--watch)
set -euo pipefail

source /research/iprobe-shuklan3/miniconda3/etc/profile.d/conda.sh
conda activate alfolio

# conda-forge rubygems ships an sh-wrapper for `bundle` that points at a
# non-existent ruby, so call bundler's exe through ruby directly.
BUNDLE_EXE="$(conda run -n alfolio ruby -e 'print Gem.bin_path("bundler","bundle")' 2>/dev/null)" \
  || BUNDLE_EXE=/research/iprobe-shuklan3/miniconda3/envs/alfolio/share/rubygems/gems/bundler-2.6.6/exe/bundle

cd "$(dirname "$0")"

if [[ "${1:-build}" == "serve" ]]; then
  # Bind to all interfaces so it's reachable over the network / SSH tunnel.
  exec ruby "$BUNDLE_EXE" exec jekyll serve --host 0.0.0.0 --port "${2:-4000}" --watch --livereload
else
  exec ruby "$BUNDLE_EXE" exec jekyll build
fi
