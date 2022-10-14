#!/bin/sh

set -ex

poetry install --no-root
poetry run conan config install https://github.com/klimkin/conan-config-replit.git