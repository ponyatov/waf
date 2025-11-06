# .mk files
MK += Makefile $(wildcard mk/*.mk)

# Rust
R += Cargo.toml $(wildcard src/*.rs)

# JavaScript
J += $(wildcard src/*.js)

# Python
P += $(wildcard src/*.py) $(wildcard lib/*.py)

# OCaml
O += $(wildcard lib/*.ml*)
