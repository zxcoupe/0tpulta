#include "../../platform.h"

void msdos_init() {
    // MSDOS-specific initialization
    audio_init();
    video_init();
    input_init();
}
