.PHONY: all
all: run

.PHONY: build
build:
	mkdir -p ./build \
	&& cp -v to-be-included.h ./build/to-be-included.h \
	&& cd ./build \
	&& cmake \
		-DCMAKE_BUILD_TYPE=RelWithDebInfo \
		../src \
	&& make

.PHONY: clean
clean:
	rm -rf build

.PHONY: run
run: clean build
	./build/hello-world