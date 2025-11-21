#!/usr/bin/env bash

ROOT_DIR="$HOME/code/rust"

echo "Cleaning all Rust projects under: $ROOT_DIR"
echo

for dir in "$ROOT_DIR"/*; do
    if [ -d "$dir" ]; then
        if [ -f "$dir/Cargo.toml" ]; then
            echo "➡️  Cleaning: $(basename "$dir")"
            (cd "$dir" && cargo clean)
        else
            echo "⏭️  Skipping (no Cargo.toml): $(basename "$dir")"
        fi
    fi
done

echo
echo "✨ Done!"

