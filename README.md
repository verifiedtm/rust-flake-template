# Rust flake template

A Nix development shell with Cargo, rustc, rustfmt, Clippy, and rust-analyzer.

## Copy the template

```sh
git clone https://github.com/verifiedtm/rust-flake-template.git my-project
cd my-project
rm -rf .git
git init
git add .
git commit -m "Initialize project from Rust flake template"
```

Replace `my-project` with your project name and rename the package in `Cargo.toml`.
Cargo updates `Cargo.lock` the next time you build.

## Development

```sh
nix develop
cargo build                    # Build the project
cargo build --workspace        # Build all workspace packages
cargo build --package example  # Build a specific package
cargo run                      # Run the example executable
cargo test                     # Run tests
cargo fmt                      # Format Rust source
cargo clippy                   # Lint Rust source
```

The example uses Rust 2024. The shell uses the Rust toolchain from the pinned
Nixpkgs input. Rust standard library sources are available to rust-analyzer via
`RUST_SRC_PATH`.

Nix requires the `nix-command` and `flakes` experimental features.
