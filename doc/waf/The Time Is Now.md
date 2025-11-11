# The Time Is Now

> Now is a great time to learn [[WAT]].

At the time of writing this, the current release of [[WebAssembly#1.0]] has a relatively small instruction set with a total of 172 different opcodes in the WebAssembly binary, although you don’t need to remember all of them. 

WebAssembly supports
- four different scalar data [[waf/types|types]]: `i32`, `i64`, `f32`, and `f64`, and 
- many of the opcodes are duplicate commands for each type (for example, `i32.add` and `i64.add`).

If you eliminate the duplicate opcodes, you only need to know about 50 different mnemonics to know the entire language. The number of opcodes supported by [[WebAssembly]] will increase over time.
