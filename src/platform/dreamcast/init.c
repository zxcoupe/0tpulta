#include "../../platform.h"

void dreamcast_init() {
    // DREAMCAST-specific initialization
    audio_init();
    video_init();
    input_init();
}
