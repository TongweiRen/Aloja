## Wakaama

Another MQTT project for testing.

### Build instructions (for bitcode)

For this one, it is easiest to use [wllvm](https://github.com/travitch/whole-program-llvm).
`wllvm` will compile that entire project normally, to an ELF, then you can use the utility `extract-bc` to get the bitcode for the target binary.

Install `wllvm` with: `pip install wllvm`.

Compile wakaama with:
```
export LLVM_COMPILER=clang
mkdir build && cd build
CC=wllvm CXX=wllvm++ CFLAGS="-g" cmake ..
make -j
```
