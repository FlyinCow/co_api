cmake_minimum_required(VERSION 3.15)
project(co_api CXX)

add_executable(test test.cpp)
target_include_directories(test PRIVATE include)