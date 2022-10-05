set -ex

conan config install https://github.com/conan-io/conanclientcert.git
conan profile update settings.compiler.libcxx=libstdc++11 default
conan install . --install-folder cmake-build-release --build=missing
cmake . -DCMAKE_TOOLCHAIN_FILE=cmake-build-release/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
