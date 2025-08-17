cmake_minimum_required(VERSION 3.15)
project(0tpulta C ASM)

# Платформы
foreach(platform ${PLATFORMS})
    option(PLATFORM_${platform^^} "Build for ${platform}" OFF)
    if(PLATFORM_${platform^^})
        add_subdirectory(platforms/${platform})
    endif()
endforeach()

add_executable(0tpulta src/main.c)
