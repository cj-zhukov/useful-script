## My collection of scripts
- clean-rust-projects.sh
```bash
./clean-rust-projects.sh ~/code/rust/
```
Recursively scans all subfolders under a given directory (default: ~/code/rust)
and runs cargo clean on every Rust project containing a Cargo.toml.
This helps free disk space by removing large target/ directories.

## Make it executable
chmod +x foo.sh

## Run
./foo.sh

