cmake_minimum_required(VERSION 3.20)

project(Template)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmakes/Modules.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/libs/Index.cmake)

add_subdirectory(modules)