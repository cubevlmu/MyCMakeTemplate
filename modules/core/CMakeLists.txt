project(Core)
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
add_library(Core STATIC
    ${src}
)

# add_dependencies(core 
#     ${dependenciesList}
# )
target_include_directories(Core PRIVATE 
    ${includeList}
)
target_link_libraries(Core PRIVATE 
    ${linkList}
)

target_compile_definitions(Core PRIVATE 
    STATIC_PLUGINS
)