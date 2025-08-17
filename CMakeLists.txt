cmake_minimum_required(VERSION 3.15)
project(0tpulta C CXX ASM)

option(BUILD_ALL "Build all platforms" OFF)

# Core configuration
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")

# Platform detection
if(CMAKE_SYSTEM_NAME STREQUAL "Dreamcast")
    set(PLATFORM_DREAMCAST 1)
elseif(CMAKE_SYSTEM_NAME STREQUAL "MS-DOS")
    set(PLATFORM_MSDOS 1)
endif()

# Main executable
add_executable(0tpulta src/main.c)

# Platform modules
foreach(platform 3do dreamcast msdos ps1 psp ds jelos rocknix)
    if(BUILD_ALL OR PLATFORM_${platform^^})
        add_subdirectory(platforms/${platform})
    endif()
endforeach()
