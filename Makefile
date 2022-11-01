all: build

.PHONY: build
build:
	cmake -B build -G Ninja .
	cmake --build build

.PHONY: test
test:
	ctest --output-on-failure --test-dir build

.PHONY: clean
clean:
	rm -rf build