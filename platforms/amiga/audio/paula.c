#include <hardware/custom.h>
void play_sample(uint8_t* data) {
    custom->aud[0].ac_ptr = (uint16_t*)data;
    custom->aud[0].ac_len = 64;
    custom->dmacon = DMAF_AUD0;
}
