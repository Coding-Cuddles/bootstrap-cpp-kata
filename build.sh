set -ex

conan profile update settings.compiler.libcxx=libstdc++11 default
conan install . --install-folder cmake-build-debug --build=missing
cmake . -DCMAKE_TOOLCHAIN_FILE=cmake-build-debug/conan_toolchain.cmake -CMAKE_BUILD_TYPE=Debug
cmake --build .