# qbs

Small Qbs-based C++ workspace for experimenting with C++23 modules.

The repository currently contains:

- `args-lib`: a static library exposing the `args` C++ module from `src/args.cppm`
- `app`: a sample executable in `src/main.cpp` that prints its command-line arguments
- `gtest`: a local GoogleTest static library built from `vendor/googletest`
- `args-tests`: a test executable in `tests/hello_tests.cpp`

## Layout

```text
.
|-- qbs.qbs
|-- products/
|-- src/
|-- tests/
`-- vendor/
```

- `qbs.qbs` is the top-level project file and references the product definitions under `products/`.
- `src/` contains the application entry point and the exported `args` module.
- `tests/` contains the GoogleTest-based test executable.
- `vendor/` contains third-party sources, including GoogleTest.

## Requirements

- Qbs 3.0 or newer
- A C++ toolchain with C++23 modules support
- On Windows, a Visual C++ toolchain configured for Qbs

## Build

Build the whole workspace from the repository root:

```powershell
qbs build -f qbs.qbs
```

This produces build artifacts under `build/`, for example:

- `build/default_debug/debug/app.7d104347/app.exe`
- `build/default_debug/debug/args-tests.16eba014/args-tests.exe`

## Run the sample app

After building, run the generated executable with any arguments:

```powershell
./build/default_debug/debug/app.7d104347/app.exe hello world
```

The app imports the `args` module and prints the argument span.

## Run tests

Run the generated test executable directly:

```powershell
./build/default_debug/debug/args-tests.16eba014/args-tests.exe
```

The current test suite verifies that `args::to_span` returns the expected number of arguments.

## Notes

- The application and `args-lib` build with `cpp.forceUseCxxModules: true` and `cpp.cxxLanguageVersion: "c++23"`.
- GoogleTest is vendored and built locally through Qbs rather than installed system-wide.