# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /home/jinna/Downloads/clion-2016.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/jinna/Downloads/clion-2016.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Parallel_Mat_mul.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Parallel_Mat_mul.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Parallel_Mat_mul.dir/flags.make

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o: CMakeFiles/Parallel_Mat_mul.dir/flags.make
CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o: ../parallel_mat_mul.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o -c /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/parallel_mat_mul.cpp

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/parallel_mat_mul.cpp > CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.i

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/parallel_mat_mul.cpp -o CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.s

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.requires:

.PHONY : CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.requires

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.provides: CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.requires
	$(MAKE) -f CMakeFiles/Parallel_Mat_mul.dir/build.make CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.provides.build
.PHONY : CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.provides

CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.provides.build: CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o


# Object files for target Parallel_Mat_mul
Parallel_Mat_mul_OBJECTS = \
"CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o"

# External object files for target Parallel_Mat_mul
Parallel_Mat_mul_EXTERNAL_OBJECTS =

Parallel_Mat_mul: CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o
Parallel_Mat_mul: CMakeFiles/Parallel_Mat_mul.dir/build.make
Parallel_Mat_mul: CMakeFiles/Parallel_Mat_mul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Parallel_Mat_mul"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Parallel_Mat_mul.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Parallel_Mat_mul.dir/build: Parallel_Mat_mul

.PHONY : CMakeFiles/Parallel_Mat_mul.dir/build

CMakeFiles/Parallel_Mat_mul.dir/requires: CMakeFiles/Parallel_Mat_mul.dir/parallel_mat_mul.cpp.o.requires

.PHONY : CMakeFiles/Parallel_Mat_mul.dir/requires

CMakeFiles/Parallel_Mat_mul.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Parallel_Mat_mul.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Parallel_Mat_mul.dir/clean

CMakeFiles/Parallel_Mat_mul.dir/depend:
	cd /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug /home/jinna/Documents/Concurrent-Lab-3-MatMul/Parallel_Mat_mul/cmake-build-debug/CMakeFiles/Parallel_Mat_mul.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Parallel_Mat_mul.dir/depend

