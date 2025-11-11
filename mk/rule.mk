bin/$(BINFILE): $(C) $(H) $(CP) $(HP) $(MK) $(CM)
	cmake --fresh --preset linux
	cmake --build --preset linux -j

bin/%.wasm: src/%.wat
# wat2wasm $< -o $@ && wasm-objdump -x $@
	cmake --build --preset wasm -j
tmp/%.wat: bin/%.wasm
# wasm2wat $< -o $@
	cmake --build --preset wasm -j
bin/%.js: src/%.js
	cp $< $@ ; chmod +x $@
