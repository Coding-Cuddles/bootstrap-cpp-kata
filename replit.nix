{ pkgs }: {
    deps = [
        pkgs.conan
        pkgs.cmake
        pkgs.ninja
        pkgs.clang_12
        pkgs.ccls
    ];
}
