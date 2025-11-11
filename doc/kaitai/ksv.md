# ksv
## [[kaitai]] struct visualizer

https://github.com/kaitai-io/kaitai_struct_visualizer

console view tool for any binary data

```sh
sudo apt install -uy ruby
sudo gem install kaitai-struct-visualizer
ksv --version
```
```sh
ksv bin/waf.wasm src/wasm.ksy
```
- любой бинарный файл: `bin/waf.wasm`
- спецификация формата ksy/kaitai

```sh
ksdump -f json bin/waf.wasm src/wasm.ksy > tmp/waf.json
```
