#include <dos.h>

void sb16_init() {
    outp(0x22E, 0x01);  // SoundBlaster init
    delay(10);
}

void sb16_play_sample(uint8_t* data, uint16_t len) {
    // Real-mode sample playback
}
