cmake_minimum_required(VERSION 3.19)
project(bootstrap-cpp-kata CXX)
enable_testing()

find_package(GTest)

add_executable(test_something test_something.cpp)
add_test(test_something test_something)
target_link_libraries(test_something PRIVATE GTest::gmock GTest::gmock_main)