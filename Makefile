PREFIX := -DCMAKE_PREFIX_PATH=~/Qt/6.5.1/gcc_64
.PHONY := all, install, uninstall, clean, dvi, dist, test, gcov_report

all: start

install: to_build
	if [ ! -d "install" ]; then mkdir install; fi;
	cp build/ProtocolProcessing install/ProtocolProcessing

uninstall:
	if [ -d "install" ]; then rm -rf install; fi;

clean: uninstall
	if [ -d "build" ]; then rm -rf build; fi;
	if [ -d "dist" ]; then rm -rf dist; fi;
	cd backend && make clean

dvi:
	cd backend && make dvi

dist: to_build
	if [ ! -d "dist/ProtocolProcessing" ]; then mkdir -p dist/ProtocolProcessing; fi;
	cp build/ProtocolProcessing dist/ProtocolProcessing/ProtocolProcessing
	cd dist && tar -czvf ProtocolProcessing.tar.gz ProtocolProcessing && rm -rf ProtocolProcessing

test:
	cd backend && make

gcov_report:
	cd backend && make gcov_report open_gcov

to_build:
	if [ ! -d "build" ]; then mkdir build; fi;
	cd build && cmake $(PREFIX) ../ && make

start: install
	cd install && ./ProtocolProcessing

formating:
	clang-format -i frontend/*.cpp frontend/*.h
