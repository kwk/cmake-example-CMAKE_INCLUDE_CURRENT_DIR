project(project_CMAKE_INCLUDE_CURRENT_DIR)
cmake_minimum_required(VERSION 3.13.4)

# Make sure we can include EnableCurrentIncludeDir.cmake by adding the directory
# where that file exists to the cmake module path.
list(INSERT CMAKE_MODULE_PATH 0 "../cmake/Modules")

# Include the file that sets CMAKE_INCLUDE_CURRENT_DIR to true
# TODO: Experiment by not including this file and see what happens!
include(EnableCurrentIncludeDir)

add_executable(hello-world main.cpp)