# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gly/socket/1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gly/socket/1/cmake-build-linux

# Include any dependencies generated for this target.
include CMakeFiles/socket1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socket1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket1.dir/flags.make

CMakeFiles/socket1.dir/main.cpp.o: CMakeFiles/socket1.dir/flags.make
CMakeFiles/socket1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gly/socket/1/cmake-build-linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/socket1.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket1.dir/main.cpp.o -c /home/gly/socket/1/main.cpp

CMakeFiles/socket1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gly/socket/1/main.cpp > CMakeFiles/socket1.dir/main.cpp.i

CMakeFiles/socket1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gly/socket/1/main.cpp -o CMakeFiles/socket1.dir/main.cpp.s

# Object files for target socket1
socket1_OBJECTS = \
"CMakeFiles/socket1.dir/main.cpp.o"

# External object files for target socket1
socket1_EXTERNAL_OBJECTS =

socket1: CMakeFiles/socket1.dir/main.cpp.o
socket1: CMakeFiles/socket1.dir/build.make
socket1: CMakeFiles/socket1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gly/socket/1/cmake-build-linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable socket1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket1.dir/build: socket1

.PHONY : CMakeFiles/socket1.dir/build

CMakeFiles/socket1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket1.dir/clean

CMakeFiles/socket1.dir/depend:
	cd /home/gly/socket/1/cmake-build-linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gly/socket/1 /home/gly/socket/1 /home/gly/socket/1/cmake-build-linux /home/gly/socket/1/cmake-build-linux /home/gly/socket/1/cmake-build-linux/CMakeFiles/socket1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket1.dir/depend
