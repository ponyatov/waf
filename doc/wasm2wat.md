# `wasm2wat`
## [[WAT]] disassembler
### [[wabt]]

```Makefile
bin/%.wasm: src/%.wat
	wat2wasm $< -o $@ && wasm-objdump -x $@
```
