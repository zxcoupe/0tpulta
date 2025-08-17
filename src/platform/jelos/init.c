#include "../../platform.h"

void jelos_init() {
    // JELOS-specific initialization
    audio_init();
    video_init();
    input_init();
}
