bash
#!/bin/bash
# Устанавливает окружение для всех платформ
PLATFORMS=("ds" "dreamcast" "psp" "ps2" "linux_arm" "windows" "dos" "amiga" "atari" "haiku")

for platform in "${PLATFORMS[@]}"; do
    echo "Настройка платформы: $platform"
    chmod +x tools/scripts/setup_$platform.sh
    ./tools/scripts/setup_$platform.sh
    echo "----------------------------------"
done

echo "Настройка завершена! Не забудьте выполнить:"
echo "source ~/.bashrc"
