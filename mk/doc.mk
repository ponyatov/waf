.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/
	rsync -r $(HOME)/metadoc/WASM/ doc/WASM/
