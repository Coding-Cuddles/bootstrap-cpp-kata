cmake_minimum_required(VERSION 3.15)
project(bootstrap-cpp-kata CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)

find_package(GTest)

add_executable(main main.cpp)
target_link_libraries(main GTest::gtest)