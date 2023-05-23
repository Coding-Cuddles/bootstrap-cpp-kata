all: build test

export CXX := clang++
export GTEST_COLOR := 1

BUILDDIR ?= build
SRCS := $(shell git ls-files *.cpp *.h)

.PHONY: build
build:
	cmake -B ${BUILDDIR} -G Ninja .
	cmake --build ${BUILDDIR}

.PHONY: run
run:
	cd ${BUILDDIR} && ./main

.PHONY: test
test:
	ctest --output-on-failure --test-dir ${BUILDDIR}

.PHONY: format
format:
	clang-format -i -style=file $(SRCS)

.PHONY: format-check
format-check:
	clang-format -style=file --dry-run -Werror $(SRCS) \
		|| (echo "Some files require formatting. Run 'make format' to fix." && exit 1)

.PHONY: clean
clean:
	rm -rf ${BUILDDIR}

ifndef VERBOSE
.SILENT:
endif
