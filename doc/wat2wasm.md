# `wat2wasm`
## [[WAT]] assembler
### [[wabt]]

```Makefile
bin/%.wasm: src/%.wat
	wat2wasm $< -o $@ && wasm-objdump -x $@
```
