# DREAMCAST Platform
add_library(dreamcast_core STATIC
    audio/dreamcast_audio.c
    video/dreamcast_video.c
)

target_include_directories(dreamcast_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(dreamcast_core PUBLIC PLATFORM_DREAMCAST=1)
