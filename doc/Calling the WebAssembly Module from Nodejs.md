# Calling the [[WebAssembly]] Module from [[Node.js]]

Calling the `add()` [[WebAssembly]] function from an asynchronous [[js/IIFE]]:

```js
#!/usr/bin/env nodejs
// WASM loader wrapper
console.log(process.argv);
const fs = require('fs');

// load .wasm
const wasm = fs.readFileSync(process.argv[2]);

const a = 123;
const b = 456;
console.log(`${a}+${b} = ${a + b}`);

(async () => {
    // instantiate (compile) to WASM module
    const module = await WebAssembly.instantiate(new Uint8Array(wasm));
    // export function
    const add = module.instance.exports.add;
    // run add()
    let c = add(a, b);
    console.log(`c = ${c}`);
})();
```

[[Node.js]] can read the [[WebAssembly]] `.wasm` file directly from the hard drive

- [[js/require]]
	- [[js/fs#readFileSync]]
- [[js/process#argv]]

We use [[IIFE]]: when you do tasks like instantiate a [[WebAssembly]] module, it takes time, and you don’t want to tie up the browser or node while waiting for that process to finish. The `(async () => {})();` syntax tells the JavaScript engine that there is a [[js/promise]] object coming, so go do something else while waiting for the result.

After instantiating the module, we call the `add()` function exported from the WAT code

## The `.then` Syntax

We prefer to use the IIFE syntax, but either syntax is perfectly acceptable.

```js
WebAssembly.instantiate(wasm)               // -> module
    .then((module) => console.log(module)); // .then(=>)
```
```
{
  instance: Instance [WebAssembly.Instance] {},
  module: Module [WebAssembly.Module] {}
}
```
