
RF += doc/WebAssembly_3.0.pdf
doc/WebAssembly_3.0.pdf:
	$(CURL) $@ https://webassembly.github.io/spec/core/_download/WebAssembly.pdf
