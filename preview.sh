#!/usr/bin/env bash
# Local preview at http://127.0.0.1:4000
set -euo pipefail
cd "$(dirname "$0")"
export BUNDLE_GEMFILE="$PWD/Gemfile.preview"
bundle install
bundle exec jekyll serve --livereload
