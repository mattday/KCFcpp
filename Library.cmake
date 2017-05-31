# CMake file to build static library for KCFcpp
cmake_minimum_required(VERSION 2.8)

project(kcf_cpp)

set(SOURCES src/fhog.cpp src/kcftracker.cpp)

include_directories(src) 

# Generate the static library from the sources
add_library(kcf_cpp STATIC ${SOURCES})

# Set the location for library installation -- i.e., /usr/lib in this case
# not really necessary in this example. Use "sudo make install" to apply
install(TARGETS kcf_cpp DESTINATION /usr/lib)