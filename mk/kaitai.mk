GZ         += $(KAITAI)
KAITAI_DEB  = kaitai-struct-compiler_$(KAITAI_VER)_all.deb
KAITAIL_URL = https://github.com/kaitai-io/kaitai_struct_compiler/releases/download
$(KAITAI): $(DISTR)/Linux/$(KAITAI_DEB)
	sudo dpkg -i $^ && sudo touch $@
$(DISTR)/Linux/$(KAITAI_DEB):
	$(CURL) $@ $(KAITAIL_URL)/$(KAITAI_VER)/$(KAITAI_DEB)

RF += lib/kaitai/kaitaistruct.h
lib/kaitai/kaitaistruct.h: ref/kaitai_struct_cpp_stl_runtime/kaitai/kaitaistruct.h
	cp -r ref/kaitai_struct_cpp_stl_runtime/kaitai lib/
