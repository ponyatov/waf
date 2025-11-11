# [[Rust]] to [[WebAssembly]] 101

https://surma.dev/things/rust-to-webassembly/

how we can get Rust to emit WebAssembly with as little deviation from the standard Rust workflow as possible

 a lot of articles and guides tell you to create a Rust library project with 
```sh
cargo init --lib
```

![[math/fast#Cargo.toml]]

![[Rust/cdylib]]

build with:

```sh
cargo build --target=wasm32-unknown-unknown --release
```
- [[Rust/release|--release]]
	- makes the WebAssembly module a lot more readable when we disassemble it

### Executable vs library

> also `cargo --init bin` can be used with [[Rust/no_main|no_main]]

### [[Rust/export|Exporting]]

- to view generated code [[WASM/wabt]] should be used: [[wasm2wat]]
- also you need [[binaryen]] to use [[wasm-opt]] or [[wasm-dis]]
- `cargo install  --locked` [[wasm-tools]]

[[WARDuino]]