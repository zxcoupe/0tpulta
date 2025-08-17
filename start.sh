#!/bin/bash

# ==============================================
# 0tpulta Project Generator v5.0 (Complete Edition)
# Все платформы: DS, Dreamcast, 3DO, PSP, MS-DOS и другие
# ==============================================

# Основные каталоги
mkdir -p 0tpulta
cd 0tpulta || exit
mkdir -p {src,include,bin,libs,platforms,tools,docs,assets}

# Полный список платформ (все, что упоминались)
PLATFORMS=(
    "3do"       # 3DO Interactive
    "dreamcast" # Sega Dreamcast
    "nds"       # Nintendo DS
    "ps1"       # PlayStation 1
    "psp"       # PlayStation Portable
    "msdos"     # MS-DOS
    "amiga"     # Amiga 500/1200
    "atari"     # Atari ST
    "jelos"     # JelOS
    "rocknix"   # Rocknix
    "rg353"     # Anbernic RG353
    "rgb30"     # Powkiddy RGB30
)

# Создаем структуру для каждой платформы
for platform in "${PLATFORMS[@]}"; do
    case $platform in
        "3do")
            mkdir -p platforms/3do/{cdrom,dsp,audio}
            ;;
        "dreamcast")
            mkdir -p platforms/dreamcast/{pvr,maple,arm7,audio}
            ;;
        "nds")
            mkdir -p platforms/nds/{arm7,arm9,audio,wiFi}
            ;;
        "msdos")
            mkdir -p platforms/msdos/{sound,vga,irq}
            ;;
        "amiga")
            mkdir -p platforms/amiga/{audio,graphics}
            ;;
        "atari")
            mkdir -p platforms/atari/{midi,graphics}
            ;;
        *)
            mkdir -p platforms/$platform/{system,audio}
            ;;
    esac
done

# ========================
# Ключевые файлы платформ
# ========================

# 1. Nintendo DS (NDS)
cat > platforms/nds/CMakeLists.txt <<'EOF'
if(USE_DEVKITPRO)
    add_executable(nds_arm7 arm7/main.c arm7/audio.c)
    add_executable(nds_arm9 arm9/main.c arm9/video.c)
    target_link_libraries(nds_arm7 nds)
    target_link_libraries(nds_arm9 nds)
endif()
EOF

# 2. Dreamcast (KallistiOS)
cat > platforms/dreamcast/pvr/pvr.c <<'EOF'
#include <dc/pvr.h>
void pvr_init() {
    pvr_init_defaults();
    pvr_set_bg_color(0.0f, 0.0f, 0.0f);
}
EOF

# 3. MS-DOS (Real Mode)
cat > platforms/msdos/sound/sb16.c <<'EOF'
#include <dos.h>
void sb16_play(uint8_t* sample, uint32_t size) {
    __asm {
        mov ax, 0x4F00
        int 0x21
    }
}
EOF

# 4. Amiga (vbcc)
cat > platforms/amiga/audio/paula.c <<'EOF'
#include <hardware/custom.h>
void play_sample(uint8_t* data) {
    custom->aud[0].ac_ptr = (uint16_t*)data;
    custom->aud[0].ac_len = 64;
    custom->dmacon = DMAF_AUD0;
}
EOF

# ========================
# Инструменты для платформ
# ========================

# 1. Установщик devkitPro (NDS)
cat > tools/setup_nds.sh <<'EOF'
#!/bin/bash
if ! command -v dkp-pacman &> /dev/null; then
    wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.deb
    sudo dpkg -i devkitpro-pacman.deb
    sudo dkp-pacman -S nds-dev
fi
EOF

# 2. Установщик DJGPP (MS-DOS)
cat > tools/setup_dos.sh <<'EOF'
#!/bin/bash
sudo apt-get install -y gcc-djgpp
EOF

# ========================
# Глобальная конфигурация
# ========================

cat > CMakeLists.txt <<'EOF'
cmake_minimum_required(VERSION 3.15)
project(0tpulta C ASM)

# Платформы
foreach(platform ${PLATFORMS})
    option(PLATFORM_${platform^^} "Build for ${platform}" OFF)
    if(PLATFORM_${platform^^})
        add_subdirectory(platforms/${platform})
    endif()
endforeach()

add_executable(0tpulta src/main.c)
EOF

# Документация
cat > docs/PLATFORMS.md <<'EOF'
# Поддерживаемые платформы

| Платформа    | Особенности                     |
|--------------|---------------------------------|
| Nintendo DS  | ARM7/ARM9, микрофон, WiFi       |
| Dreamcast    | PVR2, Maple Bus                 |
| 3DO          | CD-ROM, Cinepak                 |
| MS-DOS       | Sound Blaster, VGA 320x200      |
| Amiga        | Paula Audio, Copper             |
EOF

# Права
chmod -R +x tools/*.sh

echo "Сгенерирован проект 0tpulta со всеми платформами:"
echo "- Ретро-консоли (NDS, Dreamcast, 3DO, PS1)"
echo "- Портативные системы (JelOS, Rocknix)"
echo "- Классические ПК (MS-DOS, Amiga, Atari)"
tree -L 3 platforms