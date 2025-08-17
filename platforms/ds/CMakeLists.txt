# DS Platform
add_library(ds_core STATIC
    audio/ds_audio.c
    video/ds_video.c
)

target_include_directories(ds_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(ds_core PUBLIC PLATFORM_DS=1)
