# `wat2wasm`
## [[WAT]] assembler
### [[wabt]]

```Makefile
tmp/%.wat: bin/%.wasm
	wasm2wat $< -o $@
```
