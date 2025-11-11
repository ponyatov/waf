.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/

RF += doc/WebAssembly-3.0-draft.pdf
doc/WebAssembly-3.0-draft.pdf:
	$(CURL) $@ https://webassembly.github.io/spec/versions/core/WebAssembly-3.0-draft.pdf
