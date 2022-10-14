#!/bin/sh

set -ex

mkdir -p build && cd build
poetry run conan install .. -pr:b=default -s build_type=Debug --build=missing
poetry run conan build ..