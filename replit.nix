{ pkgs }: {
    deps = [
        pkgs.poetry
        pkgs.cmake
        pkgs.ninja
        pkgs.ccls
    ];
}
