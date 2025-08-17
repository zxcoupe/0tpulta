#include "../../platform.h"

void ds_init() {
    // DS-specific initialization
    audio_init();
    video_init();
    input_init();
}
