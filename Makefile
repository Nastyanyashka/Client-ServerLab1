# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /mnt/d/klient-server/JOPA/Client-ServerLab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/klient-server/JOPA/Client-ServerLab1

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/klient-server/JOPA/Client-ServerLab1/CMakeFiles /mnt/d/klient-server/JOPA/Client-ServerLab1//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/klient-server/JOPA/Client-ServerLab1/CMakeFiles 0
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
# Target rules for targets named libhv-http

# Build rule for target.
libhv-http: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 libhv-http
.PHONY : libhv-http

# fast build rule for target.
libhv-http/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/build
.PHONY : libhv-http/fast

#=============================================================================
# Target rules for targets named hv_static

# Build rule for target.
hv_static: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 hv_static
.PHONY : hv_static

# fast build rule for target.
hv_static/fast:
	$(MAKE) $(MAKESILENT) -f contrib/libhv/CMakeFiles/hv_static.dir/build.make contrib/libhv/CMakeFiles/hv_static.dir/build
.PHONY : hv_static/fast

#=============================================================================
# Target rules for targets named libhv_static

# Build rule for target.
libhv_static: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 libhv_static
.PHONY : libhv_static

# fast build rule for target.
libhv_static/fast:
	$(MAKE) $(MAKESILENT) -f contrib/libhv/CMakeFiles/libhv_static.dir/build.make contrib/libhv/CMakeFiles/libhv_static.dir/build
.PHONY : libhv_static/fast

src/HTTPServer.o: src/HTTPServer.cpp.o
.PHONY : src/HTTPServer.o

# target to build an object file
src/HTTPServer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/HTTPServer.cpp.o
.PHONY : src/HTTPServer.cpp.o

src/HTTPServer.i: src/HTTPServer.cpp.i
.PHONY : src/HTTPServer.i

# target to preprocess a source file
src/HTTPServer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/HTTPServer.cpp.i
.PHONY : src/HTTPServer.cpp.i

src/HTTPServer.s: src/HTTPServer.cpp.s
.PHONY : src/HTTPServer.s

# target to generate assembly for a file
src/HTTPServer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/HTTPServer.cpp.s
.PHONY : src/HTTPServer.cpp.s

src/Routers.o: src/Routers.cpp.o
.PHONY : src/Routers.o

# target to build an object file
src/Routers.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/Routers.cpp.o
.PHONY : src/Routers.cpp.o

src/Routers.i: src/Routers.cpp.i
.PHONY : src/Routers.i

# target to preprocess a source file
src/Routers.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/Routers.cpp.i
.PHONY : src/Routers.cpp.i

src/Routers.s: src/Routers.cpp.s
.PHONY : src/Routers.s

# target to generate assembly for a file
src/Routers.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/Routers.cpp.s
.PHONY : src/Routers.cpp.s

src/User.o: src/User.cpp.o
.PHONY : src/User.o

# target to build an object file
src/User.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/User.cpp.o
.PHONY : src/User.cpp.o

src/User.i: src/User.cpp.i
.PHONY : src/User.i

# target to preprocess a source file
src/User.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/User.cpp.i
.PHONY : src/User.cpp.i

src/User.s: src/User.cpp.s
.PHONY : src/User.s

# target to generate assembly for a file
src/User.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/User.cpp.s
.PHONY : src/User.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/libhv-http.dir/build.make CMakeFiles/libhv-http.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

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
	@echo "... libhv_static"
	@echo "... hv_static"
	@echo "... libhv-http"
	@echo "... src/HTTPServer.o"
	@echo "... src/HTTPServer.i"
	@echo "... src/HTTPServer.s"
	@echo "... src/Routers.o"
	@echo "... src/Routers.i"
	@echo "... src/Routers.s"
	@echo "... src/User.o"
	@echo "... src/User.i"
	@echo "... src/User.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
