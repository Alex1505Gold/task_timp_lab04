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
CMAKE_SOURCE_DIR = /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build

# Include any dependencies generated for this target.
include CMakeFiles/myExe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myExe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myExe.dir/flags.make

CMakeFiles/myExe.dir/hello_world.cpp.o: CMakeFiles/myExe.dir/flags.make
CMakeFiles/myExe.dir/hello_world.cpp.o: ../hello_world.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/myExe.dir/hello_world.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myExe.dir/hello_world.cpp.o -c /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/hello_world.cpp

CMakeFiles/myExe.dir/hello_world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myExe.dir/hello_world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/hello_world.cpp > CMakeFiles/myExe.dir/hello_world.cpp.i

CMakeFiles/myExe.dir/hello_world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myExe.dir/hello_world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/hello_world.cpp -o CMakeFiles/myExe.dir/hello_world.cpp.s

# Object files for target myExe
myExe_OBJECTS = \
"CMakeFiles/myExe.dir/hello_world.cpp.o"

# External object files for target myExe
myExe_EXTERNAL_OBJECTS =

myExe: CMakeFiles/myExe.dir/hello_world.cpp.o
myExe: CMakeFiles/myExe.dir/build.make
myExe: libformatter_ex.a
myExe: libformatter.a
myExe: CMakeFiles/myExe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable myExe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myExe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myExe.dir/build: myExe

.PHONY : CMakeFiles/myExe.dir/build

CMakeFiles/myExe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myExe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myExe.dir/clean

CMakeFiles/myExe.dir/depend:
	cd /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build /home/bayk/matveybaykalov/workspace/projects/task_timp_lab03/hello_world_application/_build/CMakeFiles/myExe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myExe.dir/depend

