#!/usr/bin/env bash
# Copy notes from the local Obsidian repo into content/ and preview locally.
set -euo pipefail
SRC="/mnt/c/Users/sanka/Documents/Sankarsh/Notes/Thoughts/Obsidian/Thoughts"
cd "$(dirname "$0")"
find content -mindepth 1 ! -name index.md -delete
rsync -a --exclude '.obsidian' --exclude '.DS_Store' --exclude 'nul' --exclude 'index.md' "$SRC"/ content/
npx quartz build --serve
