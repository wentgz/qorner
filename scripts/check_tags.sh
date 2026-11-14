#!/usr/bin/env bash

POSTS_DIR="${1:-content/posts}"

extract_tags() {
  local file="$1"

  awk '
    /^\+\+\+[[:space:]]*$/ && frontmatter == 0 {
      frontmatter = 1
      next
    }

    /^\+\+\+[[:space:]]*$/ && frontmatter == 1 {
      exit
    }

    frontmatter == 1 &&
    /^[[:space:]]*tags[[:space:]]*=/ {
      reading_tags = 1
    }

    frontmatter == 1 && reading_tags {
      line = $0

      while (match(line, /"[^"]*"/)) {
        print substr(line, RSTART + 1, RLENGTH - 2)
        line = substr(line, RSTART + RLENGTH)
      }

      if ($0 ~ /\]/) {
        reading_tags = 0
      }
    }
  ' "$file"
}

declare -A unique_tags
declare -A uppercase_tags

for file in "$POSTS_DIR"/*.md; do
  while IFS= read -r tag; do
    [[ -z "$tag" ]] && continue

    normalized_tag="${tag,,}"
    unique_tags["$normalized_tag"]=1

    if [[ "$tag" != "$normalized_tag" ]]; then
      uppercase_tags["$file: $tag"]=1
    fi
  done < <(extract_tags "$file")
done

printf '=== TAGS ===\n'

for tag in "${!unique_tags[@]}"; do
  printf '%s\n' "$tag"
done | sort

printf '\n=== Uppercase tags ===\n'

if (( ${#uppercase_tags[@]} == 0 )); then
  printf 'None\n'
else
  for tag in "${!uppercase_tags[@]}"; do
    printf '%s\n' "$tag"
  done | sort
fi
