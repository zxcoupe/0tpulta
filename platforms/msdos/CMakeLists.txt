# MSDOS Platform
add_library(msdos_core STATIC
    audio/msdos_audio.c
    video/msdos_video.c
)

target_include_directories(msdos_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(msdos_core PUBLIC PLATFORM_MSDOS=1)
