# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build

# Include any dependencies generated for this target.
include CMakeFiles/teraki.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/teraki.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/teraki.dir/flags.make

CMakeFiles/teraki.dir/main.cpp.o: CMakeFiles/teraki.dir/flags.make
CMakeFiles/teraki.dir/main.cpp.o: /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/teraki.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/teraki.dir/main.cpp.o -c /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/main.cpp

CMakeFiles/teraki.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/teraki.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/main.cpp > CMakeFiles/teraki.dir/main.cpp.i

CMakeFiles/teraki.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/teraki.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/main.cpp -o CMakeFiles/teraki.dir/main.cpp.s

CMakeFiles/teraki.dir/PointCloud.cpp.o: CMakeFiles/teraki.dir/flags.make
CMakeFiles/teraki.dir/PointCloud.cpp.o: /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/PointCloud.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/teraki.dir/PointCloud.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/teraki.dir/PointCloud.cpp.o -c /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/PointCloud.cpp

CMakeFiles/teraki.dir/PointCloud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/teraki.dir/PointCloud.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/PointCloud.cpp > CMakeFiles/teraki.dir/PointCloud.cpp.i

CMakeFiles/teraki.dir/PointCloud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/teraki.dir/PointCloud.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source/PointCloud.cpp -o CMakeFiles/teraki.dir/PointCloud.cpp.s

# Object files for target teraki
teraki_OBJECTS = \
"CMakeFiles/teraki.dir/main.cpp.o" \
"CMakeFiles/teraki.dir/PointCloud.cpp.o"

# External object files for target teraki
teraki_EXTERNAL_OBJECTS =

teraki: CMakeFiles/teraki.dir/main.cpp.o
teraki: CMakeFiles/teraki.dir/PointCloud.cpp.o
teraki: CMakeFiles/teraki.dir/build.make
teraki: CMakeFiles/teraki.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable teraki"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/teraki.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/teraki.dir/build: teraki

.PHONY : CMakeFiles/teraki.dir/build

CMakeFiles/teraki.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/teraki.dir/cmake_clean.cmake
.PHONY : CMakeFiles/teraki.dir/clean

CMakeFiles/teraki.dir/depend:
	cd /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/source /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build /home/michelle/Documents/car_tracking/Teraki3DRecruitmentTestApr19/code/build/CMakeFiles/teraki.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/teraki.dir/depend

