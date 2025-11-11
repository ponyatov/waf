# Kaitai
## [[ksy]]

декларативный язык описания структуры бинарных данных

- https://kaitai.io/
	- https://formats.kaitai.io/
	- http://doc.kaitai.io/

## install

- [[extensions.json]]

## [[WebAssembly]]

- [[ksv]]

also:
	- [[Rust/decu]]
	- [[Rust/packed_struct]]

https://github.com/kaitai-io/kaitai_struct_cpp_stl_runtime

- https://kaitai.io/
	- http://doc.kaitai.io/

```json
		"fudgepops.kaitai-struct-vscode",
```

- `version.mk`
```Makefile
# version
KAITAI_VER = 0.11
```

- tool.mk
```Makefile
KAITAI = /usr/bin/kaitai-struct-compiler
```

- kaitai.mk
```Makefile
GZ         += $(KAITAI)
KAITAI_DEB  = kaitai-struct-compiler_$(KAITAI_VER)_all.deb
KAITAIL_URL = https://github.com/kaitai-io/kaitai_struct_compiler/releases/download
$(KAITAI): $(DISTR)/Linux/$(KAITAI_DEB)
	sudo dpkg -i $^ && sudo touch $@
$(DISTR)/Linux/$(KAITAI_DEB):
	$(CURL) $@ $(KAITAIL_URL)/$(KAITAI_VER)/$(KAITAI_DEB)
```Makefile
# version
KAITAI_VER = 0.10
```
```Makefile
# dir
CWD   = $(CURDIR)
DOC   = $(CWD)/doc
TMP   = $(CWD)/tmp
DISTR = $(HOME)/distr
```
```Makefile
# tool
CURL   = curl -L -o
KAITAI = kaitai-struct-compiler
```
```Makefile
# package
KAITAI_DEB = $(KAITAI)_$(KAITAI_VER)_all.deb
KAITAI_URL = https://github.com/kaitai-io/$(KAITAI)/releases/download/$(KAITAI_VER)
```
```Makefile
ref: kaitai ref/kaitai-pdf

.PHONY: pdf
pdf: tmp/pdf.html

tmp/pdf.html: $(DOC)/pdf.ksy
	cd tmp ; $(KAITAI) $< -t html
# -d $(TMP)/$@.html

.PHONY: kaitai
kaitai: /usr/bin/$(KAITAI) ref/kaitai-pdf

/usr/bin/$(KAITAI): $(DISTR)/SDK/$(KAITAI_DEB)
	sudo apt-get install $<
# sudo touch $@

$(DISTR)/SDK/$(KAITAI_DEB):
	$(CURL) $@ $(KAITAI_URL)/$(KAITAI_DEB)

ref/kaitai-pdf:
	git clone --depth 1 https://github.com/arlac77/kaitai-pdf.git $@

doc/PDF_ISO_32000-2.pdf:
	$(CURL) $@ https://developer.adobe.com/document-services/docs/assets/5b15559b96303194340b99820d3a70fa/PDF_ISO_32000-2.pdf
>>>>>>> c138fa8ed315e32964fee592eac178f9dedb4973
```

> [[format/PDF|PDF]]

## [[WASM/WASM#3.0]]
