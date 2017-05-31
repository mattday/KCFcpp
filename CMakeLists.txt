cmake_minimum_required(VERSION 2.8)
project(kcf_all)

# Build options
option(BUILD_EXAMPLES  "Set to ON to build examples"  OFF)

find_package(OpenCV REQUIRED)

if(NOT WIN32)
ADD_DEFINITIONS("-std=c++0x -O3")
endif(NOT WIN32)

include(${CMAKE_CURRENT_SOURCE_DIR}/Library.cmake)
if (BUILD_EXAMPLES)
    include(${CMAKE_CURRENT_SOURCE_DIR}/Example.cmake)
endif()



