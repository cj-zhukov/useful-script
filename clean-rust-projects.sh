#!/usr/bin/env bash
set -euo pipefail

# ----------------------------------------
# Usage / Help
# ----------------------------------------
if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    echo "Usage: $(basename "$0") [ROOT_DIR]"
    echo
    echo "Cleans all Rust projects (cargo clean) under ROOT_DIR."
    echo "A Rust project is detected by the presence of Cargo.toml."
    echo
    echo "Defaults to: \$HOME/code/rust"
    exit 0
fi

# ----------------------------------------
# Config
# ----------------------------------------
ROOT_DIR="${1:-$HOME/code/rust}"

# ----------------------------------------
# Validation
# ----------------------------------------
if [ ! -d "$ROOT_DIR" ]; then
    echo "ERROR: Directory does not exist: $ROOT_DIR" >&2
    exit 1
fi

# ----------------------------------------
# Execution
# ----------------------------------------
echo "Cleaning all Rust projects under:"
echo "  $ROOT_DIR"
echo

for dir in "$ROOT_DIR"/*; do
    if [ -d "$dir" ]; then
        name="$(basename "$dir")"
        if [ -f "$dir/Cargo.toml" ]; then
            echo ">> cleaning  $name"
            (cd "$dir" && cargo clean)
        else
            echo ".. skipping  $name (no Cargo.toml)"
        fi
    fi
done

echo
echo "✅ Done."
