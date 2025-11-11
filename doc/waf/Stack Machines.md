# [[stack machine]]s

[[WebAssembly]] is a virtual [[stack machine]]

In computer science, [[vm/stack]] is called last-in, first-out ([[LIFO]]) data structure

- [[vm/stack#push]] adding data to top of stack
- [[vm/stack#pop]] getting from top
- [[vm/stack#top]] getting copy from top without removing
- almost all commands perform some interaction with the top elements of stack

It’s important to make the distinction between an ISA for a stack machine, and an ISA for a register machines (most of all hardware CPUs):
- Register machines
	- must move data from memory into CPU registers
	- do operations in registers only, or register + memory operand
- stack machines:
	- hold operands on a stack
	- make no assumptions about the number of generalpurpose registers available on a platform

Hardware stack machines are a very rare breed of computer. Virtual stack machines are most common: [[WebAssembly]], [[Java/JVM|JVM]], [[CLR]],.. and most high-level script languages

> The advantage of virtual stack machines is that they create smaller bytecode sizes, which is handy for any bytecode intended to be downloaded or streamed over the internet:
> - commands need only single byte opcode to encode operation
>   - or single optional operand to push literal, jump or memory address

```wasm
global.get $a_val ;; push $a_val onto the stack
global.get $b_val ;; push $b_val onto the stack
```

![[waf/i32#add]]
