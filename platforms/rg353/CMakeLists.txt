# RG353 Platform
add_library(rg353_core STATIC
    audio/rg353_audio.c
    video/rg353_video.c
)

target_include_directories(rg353_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(rg353_core PUBLIC PLATFORM_RG353=1)
