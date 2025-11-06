.PHONY: all run watch
all: wasm
run: wasm
watch: wasm

.PHONY: wasm
wasm: bin/$(APP).js bin/$(APP).wasm tmp/$(APP).wat
	$^
