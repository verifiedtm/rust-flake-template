[default]
[private]
list:
    just --list

[group('format')]
nixfmt:
    fd --hidden --no-ignore --type f --extension nix --exec-batch nixfmt

[group('format')]
cargo-fmt:
    cargo fmt --all

[group('format')]
just-format:
    just --format

[group('format')]
[parallel]
format: cargo-fmt nixfmt just-format

[group('build')]
cargo-build crate="":
    cargo build {{ if crate == "" { "--workspace" } else { "--package " + quote(crate) } }}

alias build := cargo-build

[group('build')]
cargo-check crate="":
    cargo check {{ if crate == "" { "--workspace" } else { "--package " + quote(crate) } }}

alias check := cargo-check

[group('lint')]
clippy crate="":
    cargo clippy {{ if crate == "" { "--workspace" } else { "--package " + quote(crate) } }}

alias lint := clippy
