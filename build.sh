#!/bin/sh

. $(poetry env info --path)/bin/activate

set -ex

conan install . --install-folder=build -pr:b=default -s build_type=Debug --build=missing
cmake --preset debug