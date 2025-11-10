.PHONY: all run watch
all: bin/$(APP) bin/$(APP).wasm
run: bin/$(APP) bin/$(APP).wasm
	$^

watch: wasm

.PHONY: wasm
wasm: bin/$(APP).js bin/$(APP).wasm tmp/$(APP).wat
	$^
