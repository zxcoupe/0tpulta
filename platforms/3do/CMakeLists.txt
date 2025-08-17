# 3DO Platform
add_library(3do_core STATIC
    audio/3do_audio.c
    video/3do_video.c
)

target_include_directories(3do_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(3do_core PUBLIC PLATFORM_3DO=1)
