meta:
    id: wasm
    title: WebAssembly 3.0 (2025-11-02) WASM file decoder
    file-extension: wasm
    endian: le
    license: MIT

doc: |
  WebAssembly (abbreviated Wasm) is a safe, portable, low-level code format
  designed for efficient execution and compact representation. Its main goal is
  to enable high performance applications on the Web, but it does not make any
  Web-specific assumptions or provide Web-specific features, so it can be
  employed in other environments as well.

doc-ref: https://webassembly.github.io/spec/core/binary/index.html

seq:
    - id: magic
      size: 4
      contents: [0x00, "asm"]
    - id: version
      # type: u4
      size: 4
      contents: [0x01, 0x00, 0x00, 0x00]
    - id: sections
      type: sections

types:

  sections:
    seq:
      - id: sections
        type: section
        # repeat: eos

  section:
    seq:
      - id: header
        type: section_header

  section_header:
    seq:
      - id: id
        type: u1
      - id: length
        type: u4
