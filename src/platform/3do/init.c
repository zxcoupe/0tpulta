#include "../../platform.h"

void 3do_init() {
    // 3DO-specific initialization
    audio_init();
    video_init();
    input_init();
}
