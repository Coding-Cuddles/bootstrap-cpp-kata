from functools import cached_property

from conans import ConanFile, CMake


class BootstrapCppKataConan(ConanFile):
    name = "bootstrap-cpp-kata"
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeToolchain", "CMakeDeps"

    @cached_property
    def _cmake(self):
        cmake = CMake(self)
        cmake.definitions["CMAKE_TOOLCHAIN_FILE"] = "conan_toolchain.cmake"
        return cmake

    def build_requirements(self):
        self.test_requires("gtest/1.12.1")

    def build(self):
        self._cmake.configure()
        self._cmake.build()
        self._cmake.test(output_on_failure=True)