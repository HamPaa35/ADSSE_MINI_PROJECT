# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Frostbite\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.7148.70\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Frostbite\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.7148.70\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Code.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Code.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Code.dir/flags.make

CMakeFiles/Code.dir/main.cpp.obj: CMakeFiles/Code.dir/flags.make
CMakeFiles/Code.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Code.dir/main.cpp.obj"
	"S:\Programmer (x86)\C++\mingw32\bin\g++.exe"  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Code.dir\main.cpp.obj -c "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\main.cpp"

CMakeFiles/Code.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Code.dir/main.cpp.i"
	"S:\Programmer (x86)\C++\mingw32\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\main.cpp" > CMakeFiles\Code.dir\main.cpp.i

CMakeFiles/Code.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Code.dir/main.cpp.s"
	"S:\Programmer (x86)\C++\mingw32\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\main.cpp" -o CMakeFiles\Code.dir\main.cpp.s

# Object files for target Code
Code_OBJECTS = \
"CMakeFiles/Code.dir/main.cpp.obj"

# External object files for target Code
Code_EXTERNAL_OBJECTS =

Code.exe: CMakeFiles/Code.dir/main.cpp.obj
Code.exe: CMakeFiles/Code.dir/build.make
Code.exe: CMakeFiles/Code.dir/linklibs.rsp
Code.exe: CMakeFiles/Code.dir/objects1.rsp
Code.exe: CMakeFiles/Code.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Code.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Code.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Code.dir/build: Code.exe

.PHONY : CMakeFiles/Code.dir/build

CMakeFiles/Code.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Code.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Code.dir/clean

CMakeFiles/Code.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code" "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code" "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug" "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug" "S:\Google Drive\Universitet - Personlig\8. Semester\Algorithms, Data Structures and Software Engineering for Media Technology\ADSSE Mini project\Code\cmake-build-debug\CMakeFiles\Code.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Code.dir/depend
