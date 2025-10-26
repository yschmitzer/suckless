#!/usr/bin/env bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

for subdir in "$DOTFILES_DIR"/*; do
    if [ -d "$subdir" ]; then
        setup_script="$subdir/symlink.sh"
        if [ -f "$setup_script" ] && [ -x "$setup_script" ]; then
            (cd "$subdir" && ./symlink.sh)
        fi
    fi
done
