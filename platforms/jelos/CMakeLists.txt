# JELOS Platform
add_library(jelos_core STATIC
    audio/jelos_audio.c
    video/jelos_video.c
)

target_include_directories(jelos_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(jelos_core PUBLIC PLATFORM_JELOS=1)
