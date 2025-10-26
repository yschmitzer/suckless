#!/usr/bin/env bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="/home/$USER/.config"

for data in "$DOTFILES_DIR"/*; do
    if [ "$(basename $data)" == "symlink.sh" ]; then
        continue
    fi

    target_path="$TARGET_DIR/$(basename $data)"

    if [ -e "$target_path" ]; then
        rm -r "$target_path"
    fi

    ln -s "$data" "$target_path"
done
