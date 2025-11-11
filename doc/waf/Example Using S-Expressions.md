# Example Using [[s-expression]]s

[[s-expression]]s are a nested tree structure coding style used in programming languages, such as [[Lisp]]

if you come to [[WebAssembly]] from a high-level language, like [[JavaScript]], the S-Expression syntax for [[WAT]] is likely to feel more familiar

```wasm
    (func $add (export "add")
        (global.set $c_val
            (i32.add
                (global.get $a_val)
                (global.get $b_val)
    )))
```

![[i32#add]]

this code compiles into the same binary:
```wasm
;; wasm2wat wasm.wasm -o wat.wat
(module
  (type (;0;) (func))
  (func (;0;) (type 0)
    global.get 0
    global.get 1
    i32.add
    global.set 2)
  (global (;0;) (mut i32) (i32.const 1))
  (global (;1;) (mut i32) (i32.const 2))
  (global (;2;) (mut i32) (i32.const 0))
  (export "add" (func 0)))
```

When you’re comfortable disassembling [[WebAssembly]] files into [[WAT]], you’ll find that the [[s-expression]] syntax isn’t provided by disassemblers, such as [[wasm2wat]].
