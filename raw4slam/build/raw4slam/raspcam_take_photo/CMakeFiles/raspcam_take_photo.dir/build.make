# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build

# Include any dependencies generated for this target.
include raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/depend.make

# Include the progress variables for this target.
include raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/progress.make

# Include the compile flags for this target's objects.
include raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/flags.make

raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o: raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/flags.make
raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o: ../raw4slam/raspcam_take_photo/raspcam_take_photo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o"
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o -c /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/raspcam_take_photo.cpp

raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.i"
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/raspcam_take_photo.cpp > CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.i

raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.s"
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo/raspcam_take_photo.cpp -o CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.s

# Object files for target raspcam_take_photo
raspcam_take_photo_OBJECTS = \
"CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o"

# External object files for target raspcam_take_photo
raspcam_take_photo_EXTERNAL_OBJECTS =

raw4slam/raspcam_take_photo/libraspcam_take_photo.a: raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/raspcam_take_photo.cpp.o
raw4slam/raspcam_take_photo/libraspcam_take_photo.a: raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/build.make
raw4slam/raspcam_take_photo/libraspcam_take_photo.a: raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libraspcam_take_photo.a"
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && $(CMAKE_COMMAND) -P CMakeFiles/raspcam_take_photo.dir/cmake_clean_target.cmake
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raspcam_take_photo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/build: raw4slam/raspcam_take_photo/libraspcam_take_photo.a

.PHONY : raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/build

raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/clean:
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo && $(CMAKE_COMMAND) -P CMakeFiles/raspcam_take_photo.dir/cmake_clean.cmake
.PHONY : raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/clean

raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/depend:
	cd /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/raw4slam/raspcam_take_photo /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/raw4slam/build/raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : raw4slam/raspcam_take_photo/CMakeFiles/raspcam_take_photo.dir/depend

