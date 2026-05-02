#!/bin/bash
# File: tree2md
# Description: Convert output of tree utility to Markdown in a pretty format (macOS Compatible)

# 1. Use -E for extended regex (avoids backslash hell and works on macOS)
# 2. Not using 'm' flags as they are not supported in BSD sed
# 3. Added quotes around "$1" to handle directories with spaces

# Default to current directory (.) if no argument is passed
TARGET_DIR="${1:-.}"

tree=$(tree -af --dirsfirst --gitignore --noreport --charset ascii -I "tree2md.sh|.git|.DS_Store" "$TARGET_DIR" |
tail -n +2 |
sed -E \
    -e 's/\|   /    /g' \
    -e 's/^([[:space:]]*)[|`]-- /\1* /' \
    -e 's:^([[:space:]]*\*[[:space:]]+)(.*)/([^/]+)$:\1[\3](\2/\3):')

printf "## Repository index\n\n%s\n" "$tree"