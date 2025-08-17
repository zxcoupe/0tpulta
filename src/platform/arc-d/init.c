#include "../../platform.h"

void arc-d_init() {
    // ARC-D-specific initialization
    audio_init();
    video_init();
    input_init();
}
