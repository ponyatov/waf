bin/%.wasm: src/%.wat
	wat2wasm $< -o $@ && wasm-objdump -x $@

