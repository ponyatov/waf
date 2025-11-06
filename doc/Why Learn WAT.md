# Why Learn [[WAT]]?

Many WebAssembly books and tutorials focus on specific toolchains and high-level compilers, and more [[WebAssembly]] language toolchains are continually becoming available.

> understanding what [[WebAssembly]] does at its lowest level is useful across any of these languages:
> - deep understanding of [[WAT]] tells you why the code might not run as fast or compact
> - help you comprehend how WebAssembly interacts with its embedding environment
> - writing a module in WAT is the best way to work at low-level as possible, and allows to do manual optimizations for critical points
> - required in case you are writing your own compiler or task-specific code generator

So what is [[WAT]]? WAT is like an assembly language for the [[WebAssembly]] virtual machine.

A [[WASM|WebAssembly file]] is very similar to machine code because it includes sections, opcodes, and data all stored as a series of binary numbers.
