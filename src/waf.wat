(module ;; required for any WASM code module
    (global $a_val      ;; global variable name, or raw index: (;0;)
        (mut i32)       ;; type: i32, i64, f32, f64, v128, externref or funcref
        (i32.const 1)   ;; required initializer
    )
    (global $b_val (mut i32) (i32.const 2))
    (global $c_val (mut i32) (i32.const 0))
    (func $add_glob ;; (export "add")
        (global.set $c_val
            (i32.add
                (global.get $a_val)
                (global.get $b_val)
    )))
    (func $add (export "add")
        (param $a i32) (param $b i32) ;; parameters
        (result i32)                  ;; return type
            (i32.add
                (local.get $a)
                (local.get $b)
    ))
)
