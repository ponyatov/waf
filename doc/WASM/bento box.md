# bento boxes
## [[bento-linker]]

https://github.com/arm-software/bento-linker

independently-linked, memory-isolated pieces of code that are designed to work together. You can think of them as a light-weight alternative to processes for microcontrollers.

![](https://github.com/ARM-software/bento-linker/raw/master/images/bb.svg)

Unlike processes, [[bento box|Bento-boxes]] don't require [[os/multithreading]] or [[os/virtual memory|virtual memory]]. Instead of files and pipes, boxes communicate using type-rich inter-box-communication ([[IBC]]) mechanisms that behave like familiar C functions with a few limitations.

## [[aWsm]]
## [[WAMR]]
## [[wasm3]]
