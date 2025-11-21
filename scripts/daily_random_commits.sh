#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR=$(git rev-parse --show-toplevel)
FILE="$ROOT_DIR/README.md"

ensure_trailing_newline() {
  if [[ -s "$FILE" && $(tail -c1 "$FILE") != $'\n' ]]; then
    echo >> "$FILE"
  fi
}

append_entry() {
  local stamp rand
  stamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
  rand=$(openssl rand -hex 4)
  printf -- "- %s | token: %s\n" "$stamp" "$rand" >> "$FILE"
}

ensure_trailing_newline

if [[ -n "$(tail -n1 "$FILE")" ]]; then
  echo >> "$FILE"
fi

for i in 1 2 3; do
  append_entry
  git add "$FILE"
  git commit -m "chore: random README update ($i/3)"
  sleep 1
done
