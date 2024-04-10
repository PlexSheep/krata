#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid
gem update --system
bundle install
git config --global --add safe.directory /app
bundle exec jekyll serve --livereload --host 0.0.0.0 -o http://localhost:4000 --port 4000

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
