# func
## [[waf/WASM|WASM]]

```wasm
(func $add (export "add"))
```
compiles to:
```wasm
  (type (;0;) (func))     ;; type definition: void func()
  (func (;0;) (type 0))   ;; lambda function: with type signature
  (export "add" (func 0)) ;; name export
```
