#include "core.h"

int main(int argc, char** argv) {
    platform_init();
    while(1) {
        platform_update();
    }
    return 0;
}
