# RGB30 Platform
add_library(rgb30_core STATIC
    audio/rgb30_audio.c
    video/rgb30_video.c
)

target_include_directories(rgb30_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(rgb30_core PUBLIC PLATFORM_RGB30=1)
