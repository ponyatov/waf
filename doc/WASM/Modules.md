# 5.5. Modules

The binary encoding of [[WASM/Modules|Modules]] is organized into [[WASM/Sections|Sections]].
- Most sections correspond to one component of a module record, 
- except that *function definitions are split into two sections*,
	- separating their type declarations in the *function section*
	- from their bodies in the *code section*.

> This separation enables parallel and streaming compilation of the functions in a module


## 5.5.1 Indices

All basic indices are encoded in `u32` with their respective value.

```
idx ::= 
	| typeidx ::= 𝑥:u32 ⇒ 𝑥
	| funcidx ::= 𝑥:u32 ⇒ 𝑥
	| tableidx ::= 𝑥:u32 ⇒ 𝑥
	| memidx ::= 𝑥:u32 ⇒ 𝑥
	| globalidx ::= 𝑥:u32 ⇒ 𝑥
	| tagidx ::= 𝑥:u32 ⇒ 𝑥
	| elemidx ::= 𝑥:u32 ⇒ 𝑥
	| dataidx ::= 𝑥:u32 ⇒ 𝑥
	| localidx ::= 𝑥:u32 ⇒ 𝑥
	| labelidx ::= 𝑙:u32 ⇒ �
```

External indices are encoded by a distiguishing byte followed by an encoding of their respective value.

```
externidx ::= 
			| 0x00 𝑥:funcidx ⇒ func 𝑥
			| 0x01 𝑥:tableidx ⇒ table 𝑥
			| 0x02 𝑥:memidx ⇒ memory 𝑥
			| 0x03 𝑥:globalidx ⇒ global 𝑥
			| 0x04 𝑥:tagidx ⇒ tag 𝑥
```

## 5.5.2 [[WASM/Sections]]
