PREFIX := -DCMAKE_PREFIX_PATH=~/Qt/6.5.1/gcc_64
.PHONY := all, install, uninstall, clean, dist, test

all: start

start: install
	cd install && ./ProtocolProcessing

install: to_build
	if [ ! -d "install" ]; then mkdir install; fi;
	cp build/ProtocolProcessing install/ProtocolProcessing

to_build:
	if [ ! -d "build" ]; then mkdir build; fi;
	cd build && cmake $(PREFIX) ../ && make

uninstall:
	if [ -d "install" ]; then rm -rf install; fi;

clean: uninstall
	if [ -d "build" ]; then rm -rf build; fi;
	if [ -d "dist" ]; then rm -rf dist; fi;

dist: to_build
	if [ ! -d "dist/ProtocolProcessing" ]; then mkdir -p dist/ProtocolProcessing; fi;
	cp build/ProtocolProcessing dist/ProtocolProcessing/ProtocolProcessing
	cd dist && tar -czvf ProtocolProcessing.tar.gz ProtocolProcessing && rm -rf ProtocolProcessing

formating:
	clang-format -i src/*.cpp src/*.h
