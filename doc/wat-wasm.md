# wat-wasm

use [[js/npm|npm]] to install the [[wat-wasm]] tool, which provides you with everything you need to build [[WebAssembly]] applications from [[WAT]]

- [[wat-wasm]] module, a tool for compiling, optimizing, and disassembling [[WebAssembly]], can be installed with [[js/npm|npm]]

## install

```sh
npm install -g wat-wasm
```

![[wabt#install]]

The simplest possible WebAssembly module:
```wasm
(module)
```

check [[wat-wasm]] works:
```sh
wat2wasm file.wat
```
