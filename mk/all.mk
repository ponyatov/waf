.PHONY: all run watch
all: wasm
run: wasm
watch: wasm

.PHONY: wasm
wasm: tmp/$(APP).wat
