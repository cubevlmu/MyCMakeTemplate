project(Test)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(includeList 
    "src"
)
set(linkList
    ""
)
set(dependenciesList 
    ""
)
set(headerList 
    ""
)

file(GLOB_RECURSE src
    "src/*.m"
    "src/*.cpp"
    "src/*.mm"
    "src/*.c"
)
add_executable(Test
    ${src}
)

InstallCore(includeList linkList dependenciesList)
# add_dependencies(Test 
#     ${dependenciesList}
# )
target_include_directories(Test PRIVATE 
    ${includeList}
)
target_link_libraries(Test PRIVATE 
    ${linkList}
)

target_compile_definitions(Test PRIVATE 
    STATIC_PLUGINS
)