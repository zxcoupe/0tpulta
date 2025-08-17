#include "../../platform.h"

void rocknix_init() {
    // ROCKNIX-specific initialization
    audio_init();
    video_init();
    input_init();
}
