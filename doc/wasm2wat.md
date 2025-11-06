# wasm2wat
## [[WAT]]
### [[wabt]]

```Makefile
bin/%.wasm: src/%.wat
	wat2wasm $< -o $@ && wasm-objdump -x $@
```
