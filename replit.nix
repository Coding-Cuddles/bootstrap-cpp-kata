{ pkgs }: {
    deps = [
        pkgs.ccls
        pkgs.clang_12
        pkgs.cmake
        pkgs.gtest
        pkgs.ninja
    ];
}
