# ARC-D Platform
add_library(arc-d_core STATIC
    audio/arc-d_audio.c
    video/arc-d_video.c
)

target_include_directories(arc-d_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(arc-d_core PUBLIC PLATFORM_ARC-D=1)
