RTARGET = x86_64-unknown-linux-gnu
# RTARGET = wasm32-unknown-unknown

$(RUSTUP) $(CARGO):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup target add x86_64-unknown-linux-gnu
	rustup target add wasm32-unknown-unknown
	rustup component add rust-analyzer rustfmt
	cargo install cargo-watch cargo-binutils

.PHONY: server
server: $(R)
	cargo watch -x "run --bin $@ --features=pc --target x86_64-unknown-linux-gnu -- $(S)"
