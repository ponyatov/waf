# [[WAT]] Coding Styles

There are two primary styles of WAT coding to choose from:
- linear instruction list style (assembly-like)
	- requires the developer to mentally keep track of all items push/pops on the stack
	- there is an implicit stack where the parameters of your instructions must be placed before the any [[waf/WASM|WASM]] instruction is called
- nested [[s-expression]]s ([[Lisp]]-like)
	- tree-like coding structure
	- parameters are passed into the tree in a way that looks a bit more like function calls

## Example Using Linear Instruction List Style

```js
function main() {
	let a_val = 1;
	let b_val = 2;
	let c_val = a_val + b_val;
}
```

```wasm
(module ;; required for any WASM code module
    (global $a_val      ;; global variable name, or raw index: (;0;)
        (mut i32)       ;; type: i32, i64, f32, f64, v128, externref or funcref
        (i32.const 1)   ;; required initializer
    )
)
```
- [[waf/comment|comment]]
- [[waf/module|module]]
- [[waf/global|global]]
	- [[waf/types|WASM types]]
	- [[waf/mut]]

