bin/%.wasm: src/%.wat
	wat2wasm $< -o $@ && wasm-objdump -x $@
tmp/%.wat: bin/%.wasm
	wasm2wat $< -o $@
bin/%.js: src/%.js
	cp $< $@ ; chmod +x $@
