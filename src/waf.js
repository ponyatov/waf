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

WebAssembly.instantiate(wasm) // -> module
    .then((module) => console.log(module)); // .then(=>)
