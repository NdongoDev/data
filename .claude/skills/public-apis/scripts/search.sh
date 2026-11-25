#!/usr/bin/env bash
# Usage: search.sh <mot-clé> [<mot-clé2> ...]  — filtre le catalogue (AND, insensible à la casse)
set -euo pipefail
f="$(dirname "$0")/../references/public-apis-catalog.md"
out=$(grep -E '^\| \[' "$f")
for k in "$@"; do out=$(printf '%s\n' "$out" | grep -i -- "$k" || true); done
printf '%s\n' "$out"
