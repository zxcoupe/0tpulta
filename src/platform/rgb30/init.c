#include "../../platform.h"

void rgb30_init() {
    // RGB30-specific initialization
    audio_init();
    video_init();
    input_init();
}
