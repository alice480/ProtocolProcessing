# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alice/ProtocolProcessing/ProtocolProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alice/ProtocolProcessing/ProtocolProcessing/build

# Include any dependencies generated for this target.
include CMakeFiles/ProtocolProcessing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ProtocolProcessing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ProtocolProcessing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ProtocolProcessing.dir/flags.make

CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o: CMakeFiles/ProtocolProcessing.dir/flags.make
CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o: ProtocolProcessing_autogen/mocs_compilation.cpp
CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o: CMakeFiles/ProtocolProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alice/ProtocolProcessing/ProtocolProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o -c /home/alice/ProtocolProcessing/ProtocolProcessing/build/ProtocolProcessing_autogen/mocs_compilation.cpp

CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alice/ProtocolProcessing/ProtocolProcessing/build/ProtocolProcessing_autogen/mocs_compilation.cpp > CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.i

CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alice/ProtocolProcessing/ProtocolProcessing/build/ProtocolProcessing_autogen/mocs_compilation.cpp -o CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.s

CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o: CMakeFiles/ProtocolProcessing.dir/flags.make
CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o: ../frontend/main.cpp
CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o: CMakeFiles/ProtocolProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alice/ProtocolProcessing/ProtocolProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o -MF CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o.d -o CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o -c /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/main.cpp

CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/main.cpp > CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.i

CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/main.cpp -o CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.s

CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o: CMakeFiles/ProtocolProcessing.dir/flags.make
CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o: ../frontend/mainwindow.cpp
CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o: CMakeFiles/ProtocolProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alice/ProtocolProcessing/ProtocolProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o -MF CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o.d -o CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o -c /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/mainwindow.cpp

CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/mainwindow.cpp > CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.i

CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alice/ProtocolProcessing/ProtocolProcessing/frontend/mainwindow.cpp -o CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.s

# Object files for target ProtocolProcessing
ProtocolProcessing_OBJECTS = \
"CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o" \
"CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o"

# External object files for target ProtocolProcessing
ProtocolProcessing_EXTERNAL_OBJECTS =

ProtocolProcessing: CMakeFiles/ProtocolProcessing.dir/ProtocolProcessing_autogen/mocs_compilation.cpp.o
ProtocolProcessing: CMakeFiles/ProtocolProcessing.dir/frontend/main.cpp.o
ProtocolProcessing: CMakeFiles/ProtocolProcessing.dir/frontend/mainwindow.cpp.o
ProtocolProcessing: CMakeFiles/ProtocolProcessing.dir/build.make
ProtocolProcessing: /usr/lib/x86_64-linux-gnu/libQt6Widgets.so.6.2.4
ProtocolProcessing: /usr/lib/x86_64-linux-gnu/libQt6Gui.so.6.2.4
ProtocolProcessing: /usr/lib/x86_64-linux-gnu/libQt6Core.so.6.2.4
ProtocolProcessing: /usr/lib/x86_64-linux-gnu/libGLX.so
ProtocolProcessing: /usr/lib/x86_64-linux-gnu/libOpenGL.so
ProtocolProcessing: CMakeFiles/ProtocolProcessing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alice/ProtocolProcessing/ProtocolProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ProtocolProcessing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ProtocolProcessing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ProtocolProcessing.dir/build: ProtocolProcessing
.PHONY : CMakeFiles/ProtocolProcessing.dir/build

CMakeFiles/ProtocolProcessing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ProtocolProcessing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ProtocolProcessing.dir/clean

CMakeFiles/ProtocolProcessing.dir/depend:
	cd /home/alice/ProtocolProcessing/ProtocolProcessing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alice/ProtocolProcessing/ProtocolProcessing /home/alice/ProtocolProcessing/ProtocolProcessing /home/alice/ProtocolProcessing/ProtocolProcessing/build /home/alice/ProtocolProcessing/ProtocolProcessing/build /home/alice/ProtocolProcessing/ProtocolProcessing/build/CMakeFiles/ProtocolProcessing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ProtocolProcessing.dir/depend

