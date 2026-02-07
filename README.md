# Scripts

A collection of personal utility scripts.
Each script is self-contained and documented below.

The goal of this repository is to keep simple, reusable helpers
that automate common development tasks.

---

## Usage

Make a script executable:

```bash
chmod +x <script-name>.sh
```

Run it directly:
```bash
./<script-name>.sh [args]
```

# Example script

# clean-rust-projects.sh

## Description

Recursively scans subdirectories under a given root directory and runs
cargo clean for every Rust project (detected by the presence of Cargo.toml).
This helps free disk space by removing large target/ directories.

## Usage
```bash
./clean-rust-projects.sh [ROOT_DIR]
```

## Arguments

- ROOT_DIR (optional)
Directory to scan.
Defaults to ~/code/rust.

## Example
```bash
./clean-rust-projects.sh ~/code/rust
```
