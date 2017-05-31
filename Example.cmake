# CMake file to build example program to run tracker
cmake_minimum_required(VERSION 2.8)

project(run_kcf)

FILE(GLOB_RECURSE SOURCES "src/*.cpp")

include_directories(src) 

add_executable(run_kcf ${SOURCES})

target_link_libraries(run_kcf ${OpenCV_LIBS})