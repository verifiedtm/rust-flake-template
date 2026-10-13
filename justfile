nixfmt:
    fd --hidden --no-ignore --type f --extension nix --exec-batch nixfmt

rustfmt:
    fd --hidden --no-ignore --type f --extension rs --exec-batch rustfmt --edition 2024

just-format:
    just --format

format:
    just rustfmt
    just nixfmt
    just just-format
