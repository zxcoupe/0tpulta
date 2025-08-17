# PSP Platform
add_library(psp_core STATIC
    audio/psp_audio.c
    video/psp_video.c
)

target_include_directories(psp_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(psp_core PUBLIC PLATFORM_PSP=1)
