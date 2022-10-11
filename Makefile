all: build

.PHONY: configure
configure:
	./configure.sh

.PHONY: build
build:
	./build.sh

.PHONY: clean
clean:
	rm -rf build