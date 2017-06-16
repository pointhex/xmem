# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/artem/nir_mem/xmem-example-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/artem/nir_mem/xmem-example-master

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/artem/nir_mem/xmem-example-master/CMakeFiles /home/artem/nir_mem/xmem-example-master/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/artem/nir_mem/xmem-example-master/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named deploy

# Build rule for target.
deploy: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 deploy
.PHONY : deploy

# fast build rule for target.
deploy/fast:
	$(MAKE) -f CMakeFiles/deploy.dir/build.make CMakeFiles/deploy.dir/build
.PHONY : deploy/fast

#=============================================================================
# Target rules for targets named XMemTest

# Build rule for target.
XMemTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 XMemTest
.PHONY : XMemTest

# fast build rule for target.
XMemTest/fast:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/build
.PHONY : XMemTest/fast

src/main.obj: src/main.c.obj

.PHONY : src/main.obj

# target to build an object file
src/main.c.obj:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/main.c.obj
.PHONY : src/main.c.obj

src/main.i: src/main.c.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/main.c.s
.PHONY : src/main.c.s

src/my_xmem.obj: src/my_xmem.c.obj

.PHONY : src/my_xmem.obj

# target to build an object file
src/my_xmem.c.obj:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/my_xmem.c.obj
.PHONY : src/my_xmem.c.obj

src/my_xmem.i: src/my_xmem.c.i

.PHONY : src/my_xmem.i

# target to preprocess a source file
src/my_xmem.c.i:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/my_xmem.c.i
.PHONY : src/my_xmem.c.i

src/my_xmem.s: src/my_xmem.c.s

.PHONY : src/my_xmem.s

# target to generate assembly for a file
src/my_xmem.c.s:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/my_xmem.c.s
.PHONY : src/my_xmem.c.s

src/stdio.obj: src/stdio.c.obj

.PHONY : src/stdio.obj

# target to build an object file
src/stdio.c.obj:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/stdio.c.obj
.PHONY : src/stdio.c.obj

src/stdio.i: src/stdio.c.i

.PHONY : src/stdio.i

# target to preprocess a source file
src/stdio.c.i:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/stdio.c.i
.PHONY : src/stdio.c.i

src/stdio.s: src/stdio.c.s

.PHONY : src/stdio.s

# target to generate assembly for a file
src/stdio.c.s:
	$(MAKE) -f CMakeFiles/XMemTest.dir/build.make CMakeFiles/XMemTest.dir/src/stdio.c.s
.PHONY : src/stdio.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... deploy"
	@echo "... XMemTest"
	@echo "... src/main.obj"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/my_xmem.obj"
	@echo "... src/my_xmem.i"
	@echo "... src/my_xmem.s"
	@echo "... src/stdio.obj"
	@echo "... src/stdio.i"
	@echo "... src/stdio.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
