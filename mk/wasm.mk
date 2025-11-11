
RF += doc/WebAssembly_3.0.pdf
doc/WebAssembly_3.0.pdf:
	$(CURL) $@ https://webassembly.github.io/spec/core/_download/WebAssembly.pdf

RF += ref/kaitai-webassembly/README.md
ref/kaitai-webassembly/README.md:
	$(GITREF) https://github.com/evacchi/kaitai-webassembly.git $(dir $@)
