# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/administrator/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/administrator/catkin_ws/build

# Include any dependencies generated for this target.
include aau_multi_robot/explorer/CMakeFiles/hungarian.dir/depend.make

# Include the progress variables for this target.
include aau_multi_robot/explorer/CMakeFiles/hungarian.dir/progress.make

# Include the compile flags for this target's objects.
include aau_multi_robot/explorer/CMakeFiles/hungarian.dir/flags.make

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/flags.make
aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o: /home/administrator/catkin_ws/src/aau_multi_robot/explorer/src/hungarian.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/administrator/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o"
	cd /home/administrator/catkin_ws/build/aau_multi_robot/explorer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hungarian.dir/src/hungarian.cpp.o -c /home/administrator/catkin_ws/src/aau_multi_robot/explorer/src/hungarian.cpp

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hungarian.dir/src/hungarian.cpp.i"
	cd /home/administrator/catkin_ws/build/aau_multi_robot/explorer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/administrator/catkin_ws/src/aau_multi_robot/explorer/src/hungarian.cpp > CMakeFiles/hungarian.dir/src/hungarian.cpp.i

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hungarian.dir/src/hungarian.cpp.s"
	cd /home/administrator/catkin_ws/build/aau_multi_robot/explorer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/administrator/catkin_ws/src/aau_multi_robot/explorer/src/hungarian.cpp -o CMakeFiles/hungarian.dir/src/hungarian.cpp.s

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.requires:
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.requires

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.provides: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.requires
	$(MAKE) -f aau_multi_robot/explorer/CMakeFiles/hungarian.dir/build.make aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.provides.build
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.provides

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.provides.build: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o

# Object files for target hungarian
hungarian_OBJECTS = \
"CMakeFiles/hungarian.dir/src/hungarian.cpp.o"

# External object files for target hungarian
hungarian_EXTERNAL_OBJECTS =

/home/administrator/catkin_ws/devel/lib/libhungarian.so: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o
/home/administrator/catkin_ws/devel/lib/libhungarian.so: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/build.make
/home/administrator/catkin_ws/devel/lib/libhungarian.so: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/administrator/catkin_ws/devel/lib/libhungarian.so"
	cd /home/administrator/catkin_ws/build/aau_multi_robot/explorer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hungarian.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aau_multi_robot/explorer/CMakeFiles/hungarian.dir/build: /home/administrator/catkin_ws/devel/lib/libhungarian.so
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/build

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/requires: aau_multi_robot/explorer/CMakeFiles/hungarian.dir/src/hungarian.cpp.o.requires
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/requires

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/clean:
	cd /home/administrator/catkin_ws/build/aau_multi_robot/explorer && $(CMAKE_COMMAND) -P CMakeFiles/hungarian.dir/cmake_clean.cmake
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/clean

aau_multi_robot/explorer/CMakeFiles/hungarian.dir/depend:
	cd /home/administrator/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrator/catkin_ws/src /home/administrator/catkin_ws/src/aau_multi_robot/explorer /home/administrator/catkin_ws/build /home/administrator/catkin_ws/build/aau_multi_robot/explorer /home/administrator/catkin_ws/build/aau_multi_robot/explorer/CMakeFiles/hungarian.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aau_multi_robot/explorer/CMakeFiles/hungarian.dir/depend

