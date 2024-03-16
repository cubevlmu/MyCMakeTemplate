# Test Module

function(InstallTest includeListVar linkListVar dependenciesVar)

    list(APPEND ${dependenciesVar} "Test")
    list(APPEND ${includeListVar} "${CMAKE_SOURCE_DIR}/modules/test/src" ) 
    

    IF(WIN32)
        # 处理 Windows 平台
        list(APPEND ${linkListVar} "Test")
    ELSEIF(APPLE)
        # 处理 macOS 平台
        list(APPEND ${linkListVar}  "Test")
    ELSEIF(LINUX)
        # 处理 Linux 平台
        list(APPEND ${linkListVar} "Test")
    ENDIF()

    set(${includeListVar} ${${includeListVar}} PARENT_SCOPE)
    set(${linkListVar} ${${linkListVar}} PARENT_SCOPE)
    set(${dependenciesVar} ${${dependenciesVar}} PARENT_SCOPE)
endfunction()