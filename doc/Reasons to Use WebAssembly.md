# Reasons to Use WebAssembly

## Better Performance

[[JavaScript]] requires software engineers to make limiting choices that will affect how they design the JavaScript engine:
- peak performance using a JIT optimizing compiler
	- execute code faster but requires more startup time,
	- and extra complex inside
- use an pure interpreter
	- slow and still RAM-hungry
- much larger to ugly huge memory footprints

[[WebAssembly]] allows for a 
- faster startup time and
- higher peak performance
- without all of the memory bloat
- you can’t just rewrite your JavaScript in [[WAT]], [[AssemblyScript]], [[Rust/Rust|Rust]], or [[Cpp/C++|C++]] without a little extra work
	- still have a medium to huge runtime to make any program run

