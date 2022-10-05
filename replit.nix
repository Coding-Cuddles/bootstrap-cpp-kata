{ pkgs }: {
    deps = [
        pkgs.python39Packages.poetry
        pkgs.python39Packages.pip
        pkgs.conan
        pkgs.cmake
        pkgs.ninja
        pkgs.clang_12
        pkgs.ccls
    ];
}
