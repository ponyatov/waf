# [[Rust]] to [[WebAssembly]] the hard way

https://surma.dev/things/rust-to-webassembly/

Some time ago, I wrote a blog post on [how to compile C to WebAssembly without Emscripten](https://surma.dev/things/c-to-webassembly), i.e. without the default tool that makes that process easy. In Rust, the tool that makes WebAssembly easy is called [[wasm-bindgen]], and we are going to ditch it! At the same time, Rust is a bit different in that [[WebAssembly]] has been a first-class target for a long time and the [[Rust/std|standard library]] is laid out to support it out of the box.

## [[Rust to WebAssembly 101]]