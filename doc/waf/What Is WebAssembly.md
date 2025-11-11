# What Is [[WebAssembly]]?

[[WebAssembly]] is a technology that will **massively improve the performance** of web applications

many people misunderstand it and how to use it. This book teaches you what WebAssembly is and what is not

WebAssembly is a virtual [[vm/ISA|Instruction Set Architecture]] for a [[stack machine]]. Generally, an ISA is a binary format designed to execute on a specific machine. The [[vm/Virtual Machine|Virtual Machine]] allows WebAssembly to run on a variety of computer hardware and digital devices. 

![[waf/WASM|WebAssembly ISA]]

All major browser vendors have adopted WebAssembly. According to the Mozilla Foundation, **WebAssembly code runs between 10 percent and 800 percent faster** than the equivalent JavaScript code.

WebAssembly offers the most significant performance improvement the web has seen since the introduction of the just-in-time ([[compiler/JIT|JIT]]) [[JavaScript]] compilers.

WebAssembly is a binary target, not a programming language like JavaScript, allows the developer to hide its intellectual privacy and know-how's

Some [[waf/WASM|WASM]]-targetes cross-compilers allows to choose the programming language that best suits their application’s needs:
- [[WAT]] assembly
	- [[wabt]] is a minimal tool set
- [[Rust/WASM|Rust]]
- [[Cpp/C++|C++]]
	- [[Empscripten]]
- [[waf]] is a minimal [[FORTH/FORTH|FORTH-like]] script language
	- done as a [[compiler/compiler|compiler]] design demo

moving legacy apps to Web:
- [[JavaScript]]
	- target format is a terrible compilation target
	- also has to handle the specifics of multiple [[js/engine|JavaScript engine]]s
	- load/startup speed: [[minified]] JavaScript, which improves application download sizes but must parse, interpret, JIT compile and optimize
	- less speed/memory efficient than a binary format like [[WebAssembly]]
	- JavaScript is a highly dynamic and compilation nightmare
- [[WebAssembly]]
	- makes it easier for the (mobile) browsers & engines to optimize on-device.
	- doesn’t make any web-specific assumptions, and can be used out of JS engines and browsers ([[IoT/IoT|IoT]] and standalone apps)

In the MVP stage, WebAssembly can do certain tasks very well. It’s not intended to be a drop-in replacement for JavaScript or JS frameworks
- you should have a specific computationally intensive project that requires very high performance
	- online/mobile games, 
	- media payers, encoders and WebVR
	- CAD/3D math
	- crypto
