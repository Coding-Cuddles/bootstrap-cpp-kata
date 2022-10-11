#!/bin/sh

set -ex

poetry install
. $(poetry env info --path)/bin/activate
conan config init
conan profile update settings.compiler.libcxx=libstdc++11 default