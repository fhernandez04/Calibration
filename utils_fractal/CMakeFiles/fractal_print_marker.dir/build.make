# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/francisco/Escritorio/Calibration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/francisco/Escritorio/Calibration

# Include any dependencies generated for this target.
include utils_fractal/CMakeFiles/fractal_print_marker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utils_fractal/CMakeFiles/fractal_print_marker.dir/compiler_depend.make

# Include the progress variables for this target.
include utils_fractal/CMakeFiles/fractal_print_marker.dir/progress.make

# Include the compile flags for this target's objects.
include utils_fractal/CMakeFiles/fractal_print_marker.dir/flags.make

utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o: utils_fractal/CMakeFiles/fractal_print_marker.dir/flags.make
utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o: utils_fractal/fractal_print_marker.cpp
utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o: utils_fractal/CMakeFiles/fractal_print_marker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/francisco/Escritorio/Calibration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o"
	cd /home/francisco/Escritorio/Calibration/utils_fractal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o -MF CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o.d -o CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o -c /home/francisco/Escritorio/Calibration/utils_fractal/fractal_print_marker.cpp

utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.i"
	cd /home/francisco/Escritorio/Calibration/utils_fractal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francisco/Escritorio/Calibration/utils_fractal/fractal_print_marker.cpp > CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.i

utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.s"
	cd /home/francisco/Escritorio/Calibration/utils_fractal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francisco/Escritorio/Calibration/utils_fractal/fractal_print_marker.cpp -o CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.s

# Object files for target fractal_print_marker
fractal_print_marker_OBJECTS = \
"CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o"

# External object files for target fractal_print_marker
fractal_print_marker_EXTERNAL_OBJECTS =

utils_fractal/fractal_print_marker: utils_fractal/CMakeFiles/fractal_print_marker.dir/fractal_print_marker.cpp.o
utils_fractal/fractal_print_marker: utils_fractal/CMakeFiles/fractal_print_marker.dir/build.make
utils_fractal/fractal_print_marker: src/libaruco.so.3.1.12
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.6.0
utils_fractal/fractal_print_marker: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.6.0
utils_fractal/fractal_print_marker: utils_fractal/CMakeFiles/fractal_print_marker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/francisco/Escritorio/Calibration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fractal_print_marker"
	cd /home/francisco/Escritorio/Calibration/utils_fractal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fractal_print_marker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils_fractal/CMakeFiles/fractal_print_marker.dir/build: utils_fractal/fractal_print_marker
.PHONY : utils_fractal/CMakeFiles/fractal_print_marker.dir/build

utils_fractal/CMakeFiles/fractal_print_marker.dir/clean:
	cd /home/francisco/Escritorio/Calibration/utils_fractal && $(CMAKE_COMMAND) -P CMakeFiles/fractal_print_marker.dir/cmake_clean.cmake
.PHONY : utils_fractal/CMakeFiles/fractal_print_marker.dir/clean

utils_fractal/CMakeFiles/fractal_print_marker.dir/depend:
	cd /home/francisco/Escritorio/Calibration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/francisco/Escritorio/Calibration /home/francisco/Escritorio/Calibration/utils_fractal /home/francisco/Escritorio/Calibration /home/francisco/Escritorio/Calibration/utils_fractal /home/francisco/Escritorio/Calibration/utils_fractal/CMakeFiles/fractal_print_marker.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : utils_fractal/CMakeFiles/fractal_print_marker.dir/depend

