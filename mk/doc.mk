.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/
	rsync -r $(HOME)/metadoc/WASM/ doc/WASM/
	rsync -r $(HOME)/metadoc/kaitai/ doc/kaitai/

.PHONY: doxy
doxy: .doxygen doc/DoxygenLayout.xml doc/logo.png doc
	rm -rf doc/html ; doxygen $< 1>/dev/null

RF += doc/WebAssembly-3.0-draft.pdf
doc/WebAssembly-3.0-draft.pdf:
	$(CURL) $@ https://webassembly.github.io/spec/versions/core/WebAssembly-3.0-draft.pdf
