# PS1 Platform
add_library(ps1_core STATIC
    audio/ps1_audio.c
    video/ps1_video.c
)

target_include_directories(ps1_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(ps1_core PUBLIC PLATFORM_PS1=1)
