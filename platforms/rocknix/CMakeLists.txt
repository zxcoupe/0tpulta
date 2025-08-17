# ROCKNIX Platform
add_library(rocknix_core STATIC
    audio/rocknix_audio.c
    video/rocknix_video.c
)

target_include_directories(rocknix_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(rocknix_core PUBLIC PLATFORM_ROCKNIX=1)
