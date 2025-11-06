# WASI
## WebAssembly System Interface
### [[The Embedding Environment]]

[[WASI]] is a runtime specification for [[WebAssembly]] applications and is a standard for WebAssembly interaction with the operating system. It allows WebAssembly to use the [[storage/filesystem|filesystem]], make [[system call]]s, and handle native input and output.

## [[wasmtime]]
## [[Node.js]]

can also run a [[WASI]] experimental preview using the `--experimental-wasi-unstable-preview1` flag. You can use it to run [[WebAssembly]] applications that interact with the operating system outside of a web browser
