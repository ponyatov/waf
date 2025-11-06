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
function add() {
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
    (global $b_val (mut i32) (i32.const 2))
    (global $c_val (mut i32) (i32.const 0))
    ;;
    (func $add (export "add")
        global.get $a_val   ;; push var content
        global.get $b_val
        i32.add             ;; ( a b -- c=a+b )
        global.set $c_val
    )
)
```
- [[waf/comment|comment]]
- [[waf/module|module]]
- [[waf/global|global]]
	- [[waf/types|WASM types]]
	- [[waf/mut]]
- [[waf/func|func]]
	- [[waf/export|export]]