# Kaitai
## [[ksy]]

декларативный язык описания структуры бинарных данных

- https://kaitai.io/
	- https://formats.kaitai.io/
	- http://doc.kaitai.io/

## install

- [[extensions.json]]
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
```

> [[format/PDF|PDF]]

## [[WASM/WASM#3.0]]
