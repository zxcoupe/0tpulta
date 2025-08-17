#include "../../platform.h"

void ps1_init() {
    // PS1-specific initialization
    audio_init();
    video_init();
    input_init();
}
