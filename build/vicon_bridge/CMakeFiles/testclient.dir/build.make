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
include vicon_bridge/CMakeFiles/testclient.dir/depend.make

# Include the progress variables for this target.
include vicon_bridge/CMakeFiles/testclient.dir/progress.make

# Include the compile flags for this target's objects.
include vicon_bridge/CMakeFiles/testclient.dir/flags.make

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o: vicon_bridge/CMakeFiles/testclient.dir/flags.make
vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o: /home/administrator/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/administrator/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o"
	cd /home/administrator/catkin_ws/build/vicon_bridge && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o -c /home/administrator/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i"
	cd /home/administrator/catkin_ws/build/vicon_bridge && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/administrator/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp > CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s"
	cd /home/administrator/catkin_ws/build/vicon_bridge && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/administrator/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp -o CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.requires:
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.requires

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.provides: vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.requires
	$(MAKE) -f vicon_bridge/CMakeFiles/testclient.dir/build.make vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.provides.build
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.provides

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.provides.build: vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o

# Object files for target testclient
testclient_OBJECTS = \
"CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o"

# External object files for target testclient
testclient_EXTERNAL_OBJECTS =

/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o
/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/build.make
/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: /home/administrator/catkin_ws/src/vicon_bridge/vicon_sdk/Vicon_SDK_1.3_Linux/64-bit/libViconDataStreamSDK_CPP.so
/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient"
	cd /home/administrator/catkin_ws/build/vicon_bridge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vicon_bridge/CMakeFiles/testclient.dir/build: /home/administrator/catkin_ws/devel/lib/vicon_bridge/testclient
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/build

vicon_bridge/CMakeFiles/testclient.dir/requires: vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.requires
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/requires

vicon_bridge/CMakeFiles/testclient.dir/clean:
	cd /home/administrator/catkin_ws/build/vicon_bridge && $(CMAKE_COMMAND) -P CMakeFiles/testclient.dir/cmake_clean.cmake
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/clean

vicon_bridge/CMakeFiles/testclient.dir/depend:
	cd /home/administrator/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrator/catkin_ws/src /home/administrator/catkin_ws/src/vicon_bridge /home/administrator/catkin_ws/build /home/administrator/catkin_ws/build/vicon_bridge /home/administrator/catkin_ws/build/vicon_bridge/CMakeFiles/testclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/depend

