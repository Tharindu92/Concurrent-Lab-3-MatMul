cmake_minimum_required(VERSION 3.6)
project(Parallel_Mat_mul)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES parallel_mat_mul.cpp)
add_executable(Parallel_Mat_mul ${SOURCE_FILES})