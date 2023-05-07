all: format-check test

export CXX := clang++
export GTEST_COLOR := 1

BUILDDIR ?= /tmp/build
SRCS := $(shell find . -name '*.cpp' -or -name '*.h')

.PHONY: build
build:
	cmake -B ${BUILDDIR} -G Ninja .
	cmake --build ${BUILDDIR}

.PHONY: run
run: build
	cd ${BUILDDIR} && ./main

.PHONY: test
test: build
	ctest --output-on-failure --test-dir ${BUILDDIR}

.PHONY: format
format:
	@clang-format -i -style=file $(SRCS)

.PHONY: format-check
format-check:
	@clang-format -style=file --dry-run -Werror $(SRCS) \
		|| (echo "Some files require formatting. Run 'make format' to fix." && exit 1)

.PHONY: clean
clean:
	rm -rf ${BUILDDIR}

ifndef VERBOSE
.SILENT:
endif
