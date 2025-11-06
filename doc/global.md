# global
## [[waf/WASM|WASM]]

```wasm
    (global $a_val      ;; global variable name, or raw index: (;0;)
        (mut i32)       ;; type: i32, i64, f32, f64, v128, externref or funcref
        (i32.const 123) ;; required initializer
    )
```

## get
```wasm
        global.get $a_val   ;; ( -- a ) push var content
        global.get $b_val
```

## set
```wasm
        global.set $c_val
```
