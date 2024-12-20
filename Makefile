# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Available install components are: \"Unspecified\" \"main\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/francisco/Escritorio/Calibration/CMakeFiles /home/francisco/Escritorio/Calibration//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/francisco/Escritorio/Calibration/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named uninstall

# Build rule for target.
uninstall: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 uninstall
.PHONY : uninstall

# fast build rule for target.
uninstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/uninstall.dir/build.make CMakeFiles/uninstall.dir/build
.PHONY : uninstall/fast

#=============================================================================
# Target rules for targets named aruco

# Build rule for target.
aruco: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco
.PHONY : aruco

# fast build rule for target.
aruco/fast:
	$(MAKE) $(MAKESILENT) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/build
.PHONY : aruco/fast

#=============================================================================
# Target rules for targets named aruco_print_dictionary

# Build rule for target.
aruco_print_dictionary: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_print_dictionary
.PHONY : aruco_print_dictionary

# fast build rule for target.
aruco_print_dictionary/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_print_dictionary.dir/build.make utils/CMakeFiles/aruco_print_dictionary.dir/build
.PHONY : aruco_print_dictionary/fast

#=============================================================================
# Target rules for targets named aruco_print_marker

# Build rule for target.
aruco_print_marker: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_print_marker
.PHONY : aruco_print_marker

# fast build rule for target.
aruco_print_marker/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_print_marker.dir/build.make utils/CMakeFiles/aruco_print_marker.dir/build
.PHONY : aruco_print_marker/fast

#=============================================================================
# Target rules for targets named aruco_simple

# Build rule for target.
aruco_simple: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_simple
.PHONY : aruco_simple

# fast build rule for target.
aruco_simple/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_simple.dir/build.make utils/CMakeFiles/aruco_simple.dir/build
.PHONY : aruco_simple/fast

#=============================================================================
# Target rules for targets named aruco_test

# Build rule for target.
aruco_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_test
.PHONY : aruco_test

# fast build rule for target.
aruco_test/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_test.dir/build.make utils/CMakeFiles/aruco_test.dir/build
.PHONY : aruco_test/fast

#=============================================================================
# Target rules for targets named aruco_tracker

# Build rule for target.
aruco_tracker: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_tracker
.PHONY : aruco_tracker

# fast build rule for target.
aruco_tracker/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_tracker.dir/build.make utils/CMakeFiles/aruco_tracker.dir/build
.PHONY : aruco_tracker/fast

#=============================================================================
# Target rules for targets named aruco_batch_processing

# Build rule for target.
aruco_batch_processing: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_batch_processing
.PHONY : aruco_batch_processing

# fast build rule for target.
aruco_batch_processing/fast:
	$(MAKE) $(MAKESILENT) -f utils/CMakeFiles/aruco_batch_processing.dir/build.make utils/CMakeFiles/aruco_batch_processing.dir/build
.PHONY : aruco_batch_processing/fast

#=============================================================================
# Target rules for targets named aruco_create_markermap

# Build rule for target.
aruco_create_markermap: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_create_markermap
.PHONY : aruco_create_markermap

# fast build rule for target.
aruco_create_markermap/fast:
	$(MAKE) $(MAKESILENT) -f utils_markermap/CMakeFiles/aruco_create_markermap.dir/build.make utils_markermap/CMakeFiles/aruco_create_markermap.dir/build
.PHONY : aruco_create_markermap/fast

#=============================================================================
# Target rules for targets named aruco_simple_markermap

# Build rule for target.
aruco_simple_markermap: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_simple_markermap
.PHONY : aruco_simple_markermap

# fast build rule for target.
aruco_simple_markermap/fast:
	$(MAKE) $(MAKESILENT) -f utils_markermap/CMakeFiles/aruco_simple_markermap.dir/build.make utils_markermap/CMakeFiles/aruco_simple_markermap.dir/build
.PHONY : aruco_simple_markermap/fast

#=============================================================================
# Target rules for targets named aruco_test_markermap

# Build rule for target.
aruco_test_markermap: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_test_markermap
.PHONY : aruco_test_markermap

# fast build rule for target.
aruco_test_markermap/fast:
	$(MAKE) $(MAKESILENT) -f utils_markermap/CMakeFiles/aruco_test_markermap.dir/build.make utils_markermap/CMakeFiles/aruco_test_markermap.dir/build
.PHONY : aruco_test_markermap/fast

#=============================================================================
# Target rules for targets named aruco_markermap_pix2meters

# Build rule for target.
aruco_markermap_pix2meters: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_markermap_pix2meters
.PHONY : aruco_markermap_pix2meters

# fast build rule for target.
aruco_markermap_pix2meters/fast:
	$(MAKE) $(MAKESILENT) -f utils_markermap/CMakeFiles/aruco_markermap_pix2meters.dir/build.make utils_markermap/CMakeFiles/aruco_markermap_pix2meters.dir/build
.PHONY : aruco_markermap_pix2meters/fast

#=============================================================================
# Target rules for targets named aruco_calibration

# Build rule for target.
aruco_calibration: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_calibration
.PHONY : aruco_calibration

# fast build rule for target.
aruco_calibration/fast:
	$(MAKE) $(MAKESILENT) -f utils_calibration/CMakeFiles/aruco_calibration.dir/build.make utils_calibration/CMakeFiles/aruco_calibration.dir/build
.PHONY : aruco_calibration/fast

#=============================================================================
# Target rules for targets named aruco_calibration_fromimages

# Build rule for target.
aruco_calibration_fromimages: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_calibration_fromimages
.PHONY : aruco_calibration_fromimages

# fast build rule for target.
aruco_calibration_fromimages/fast:
	$(MAKE) $(MAKESILENT) -f utils_calibration/CMakeFiles/aruco_calibration_fromimages.dir/build.make utils_calibration/CMakeFiles/aruco_calibration_fromimages.dir/build
.PHONY : aruco_calibration_fromimages/fast

#=============================================================================
# Target rules for targets named aruco_dcf

# Build rule for target.
aruco_dcf: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_dcf
.PHONY : aruco_dcf

# fast build rule for target.
aruco_dcf/fast:
	$(MAKE) $(MAKESILENT) -f utils_dcf/CMakeFiles/aruco_dcf.dir/build.make utils_dcf/CMakeFiles/aruco_dcf.dir/build
.PHONY : aruco_dcf/fast

#=============================================================================
# Target rules for targets named aruco_dcf_mm

# Build rule for target.
aruco_dcf_mm: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 aruco_dcf_mm
.PHONY : aruco_dcf_mm

# fast build rule for target.
aruco_dcf_mm/fast:
	$(MAKE) $(MAKESILENT) -f utils_dcf/CMakeFiles/aruco_dcf_mm.dir/build.make utils_dcf/CMakeFiles/aruco_dcf_mm.dir/build
.PHONY : aruco_dcf_mm/fast

#=============================================================================
# Target rules for targets named fractal_create

# Build rule for target.
fractal_create: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 fractal_create
.PHONY : fractal_create

# fast build rule for target.
fractal_create/fast:
	$(MAKE) $(MAKESILENT) -f utils_fractal/CMakeFiles/fractal_create.dir/build.make utils_fractal/CMakeFiles/fractal_create.dir/build
.PHONY : fractal_create/fast

#=============================================================================
# Target rules for targets named fractal_tracker

# Build rule for target.
fractal_tracker: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 fractal_tracker
.PHONY : fractal_tracker

# fast build rule for target.
fractal_tracker/fast:
	$(MAKE) $(MAKESILENT) -f utils_fractal/CMakeFiles/fractal_tracker.dir/build.make utils_fractal/CMakeFiles/fractal_tracker.dir/build
.PHONY : fractal_tracker/fast

#=============================================================================
# Target rules for targets named fractal_print_marker

# Build rule for target.
fractal_print_marker: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 fractal_print_marker
.PHONY : fractal_print_marker

# fast build rule for target.
fractal_print_marker/fast:
	$(MAKE) $(MAKESILENT) -f utils_fractal/CMakeFiles/fractal_print_marker.dir/build.make utils_fractal/CMakeFiles/fractal_print_marker.dir/build
.PHONY : fractal_print_marker/fast

#=============================================================================
# Target rules for targets named fractal_pix2meters

# Build rule for target.
fractal_pix2meters: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 fractal_pix2meters
.PHONY : fractal_pix2meters

# fast build rule for target.
fractal_pix2meters/fast:
	$(MAKE) $(MAKESILENT) -f utils_fractal/CMakeFiles/fractal_pix2meters.dir/build.make utils_fractal/CMakeFiles/fractal_pix2meters.dir/build
.PHONY : fractal_pix2meters/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... uninstall"
	@echo "... aruco"
	@echo "... aruco_batch_processing"
	@echo "... aruco_calibration"
	@echo "... aruco_calibration_fromimages"
	@echo "... aruco_create_markermap"
	@echo "... aruco_dcf"
	@echo "... aruco_dcf_mm"
	@echo "... aruco_markermap_pix2meters"
	@echo "... aruco_print_dictionary"
	@echo "... aruco_print_marker"
	@echo "... aruco_simple"
	@echo "... aruco_simple_markermap"
	@echo "... aruco_test"
	@echo "... aruco_test_markermap"
	@echo "... aruco_tracker"
	@echo "... fractal_create"
	@echo "... fractal_pix2meters"
	@echo "... fractal_print_marker"
	@echo "... fractal_tracker"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

