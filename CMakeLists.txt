cmake_minimum_required(VERSION 3.19)
project(bootstrap-cpp-kata CXX)
enable_testing()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_COMPILER "clang++")

find_package(GTest)

add_executable(test_something test_something.cpp)
add_test(test_something test_something)
target_link_libraries(test_something PRIVATE GTest::gmock GTest::gmock_main)

add_custom_target(
	  copy-compile-commands ALL
	  ${CMAKE_COMMAND} -E copy_if_different
	  ${CMAKE_BINARY_DIR}/compile_commands.json
	  ${CMAKE_CURRENT_LIST_DIR}
)
