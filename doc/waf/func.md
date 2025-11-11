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

## param

```wasm
    (func $add (export "add")
        (param $a i32) (param $b i32) ;; parameters
        (result i32)                  ;; return type
            (i32.add
                (local.get $a)
                (local.get $b)
    ))
```
compiles to:
```wasm
(module
  (type (;1;) (func (param i32 i32) (result i32)))
  (func (;1;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (export "add" (func 1)))
```
- [[waf/module|module]]
- [[waf/type]]

## result

```wasm
(type i32)
```
- [[waf/type|type]]
- [[waf/types|types]]
