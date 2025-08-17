#include <dos.h>
void sb16_play(uint8_t* sample, uint32_t size) {
    __asm {
        mov ax, 0x4F00
        int 0x21
    }
}
