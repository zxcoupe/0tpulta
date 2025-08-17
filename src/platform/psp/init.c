#include "../../platform.h"

void psp_init() {
    // PSP-specific initialization
    audio_init();
    video_init();
    input_init();
}
