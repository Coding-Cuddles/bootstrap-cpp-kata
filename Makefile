all: build

.PHONY: build
build:
	cmake -B build -G Ninja .
	cmake --build build

.PHONY: test
test:
	ctest --test-dir build

.PHONY: clean
clean:
	rm -rf build