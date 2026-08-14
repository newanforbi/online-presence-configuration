#!/usr/bin/env bash
# Fail if the public site contains strings that would glue the
# professional name to the other spelling, a home address, or this
# GitHub user. Run from the repository root.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SITE="$ROOT/site"
failed=0

if [[ ! -d "$SITE" ]]; then
  echo "site/ directory missing" >&2
  exit 1
fi

# Patterns that must never ship in the indexable site.
# Keep these as separate arguments so the script file itself is not
# a false positive when grepping the repo.
forbidden=(
  '[Nn]ewanforbi'
  '[Nn]gehsi'
  'Cat Tail'
  '1455'
  'github.com/newanforbi'
)

while IFS= read -r -d '' file; do
  for pat in "${forbidden[@]}"; do
    if grep -Eiq "$pat" "$file"; then
      echo "FORBIDDEN pattern /$pat/ in ${file#"$ROOT/"}" >&2
      failed=1
    fi
  done
done < <(find "$SITE" -type f -print0)

if [[ "$failed" -ne 0 ]]; then
  echo "Public site is not clean. Remove the matches above before deploying." >&2
  exit 1
fi

echo "site/ is clean of unlink-sensitive strings."
