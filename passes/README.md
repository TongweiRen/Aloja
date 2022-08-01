## Passes

This directory contains the source for all LLVM analysis and transformation passes.

### Building

In order to use the passes through `opt` with the wrapper scripts in `aloja/utils`, you need to compile the shared lib here first.

For any of the subdirectories, follow these steps:

```bash
mkdir -p build
cd build
cmake ..
make -j
```

This will create the .so/.dylib object in the `build` directory. You can now copy this over to the `aloja/utils` directory to utilize those scripts.