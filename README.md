# Bootstrap for C++ coding kata

[![CI](https://github.com/Coding-Cuddles/bootstrap-cpp-kata/actions/workflows/main.yml/badge.svg)](https://github.com/Coding-Cuddles/bootstrap-cpp-kata/actions/workflows/main.yml)
[![C++17](https://img.shields.io/badge/C%2B%2B-17-blue.svg)](https://en.cppreference.com/w/cpp/17)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Start a C++17 coding kata with GoogleTest. Setup is complete when the starter
test passes.

## Prerequisites

Required:

- [Git](https://git-scm.com/downloads)
- A compiler with C++17 support. Choose one:
  - [GCC](https://gcc.gnu.org/) 10+ on Linux
  - [LLVM Clang](https://llvm.org/) 14+ on Linux
  - [Apple Clang](https://developer.apple.com/xcode/) 17+ on macOS
  - [MSVC](https://visualstudio.microsoft.com/) 2022 on Windows
- [CMake 3.24 or later](https://cmake.org)

Optional:

- [GNU Make](https://www.gnu.org/software/make/), for shorter commands. Every
  required task also has direct CMake and CTest commands.

You do not need to install GoogleTest separately. CMake finds an installed
copy or downloads the pinned release when needed.

## Set up the kata

1. Clone the repository:

   ```console
   git clone https://github.com/Coding-Cuddles/bootstrap-cpp-kata.git
   ```

2. Enter the repository directory:

   ```console
   cd bootstrap-cpp-kata
   ```

3. Run the starter test. Use Make when it is installed:

   ```console
   make test
   ```

   Otherwise, use CMake and CTest directly:

   ```console
   cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
   cmake --build build --config Debug
   ctest --test-dir build --build-config Debug --output-on-failure
   ```

The first run may download and build GoogleTest. Setup is complete when CTest reports
`100% tests passed`.

If a command reports a missing compiler or CMake, install that prerequisite
and run the setup commands again.

## Work on the kata

1. Replace the starter assertions in `test_something.cpp` with the first kata test.

2. Run the tests after each change. Use Make when it is installed:

   ```console
   make test
   ```

   Otherwise, use CMake and CTest directly:

   ```console
   cmake --build build --config Debug
   ctest --test-dir build --build-config Debug --output-on-failure
   ```

   Continue when CTest reports `100% tests passed`.

## Make command reference

Make is optional. Run `make` or `make help` to list these commands in the
terminal.

| Command             | Result                                    |
| ------------------- | ----------------------------------------- |
| `make all`          | Build and run the test suite              |
| `make build`        | Configure and build without running tests |
| `make test`         | Build and run the test suite              |
| `make format`       | Format tracked C++ and header files       |
| `make format-check` | Check formatting without changing files   |
| `make clean`        | Remove generated build artifacts          |
