# Core Module

function(InstallCore includeListVar linkListVar dependenciesVar)

    list(APPEND ${dependenciesVar} "Core")
    list(APPEND ${includeListVar} "${CMAKE_SOURCE_DIR}/modules/core/src" ) 
    

    IF(WIN32)
        # 处理 Windows 平台
        list(APPEND ${linkListVar} "Core")
    ELSEIF(APPLE)
        # 处理 macOS 平台
        list(APPEND ${linkListVar}  "Core")
    ELSEIF(LINUX)
        # 处理 Linux 平台
        list(APPEND ${linkListVar} "Core")
    ENDIF()

    set(${includeListVar} ${${includeListVar}} PARENT_SCOPE)
    set(${linkListVar} ${${linkListVar}} PARENT_SCOPE)
    set(${dependenciesVar} ${${dependenciesVar}} PARENT_SCOPE)
endfunction()