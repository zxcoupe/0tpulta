# Добавляем поддержку Rocknix/PortMaster
mkdir -p platforms/rocknix/{portmaster,system}

# PortMaster-скрипт
cat > platforms/rocknix/portmaster/ptt_radio.sh <<'EOF'
#!/bin/bash
# PortMaster-совместимый скрипт для Rocknix
export PLATFORM=rocknix
cd "$(dirname "$0")/../../bin"
exec ./0tpulta --ptt-mode --ad-hoc
EOF

# Systemd-сервис
cat > platforms/rocknix/system/0tpulta.service <<'EOF'
[Unit]
Description=0tpulta PTT Radio Service
After=network.target

[Service]
ExecStart=/usr/bin/0tpulta --daemon
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Инсталлятор
cat > platforms/rocknix/system/rocknix_install.sh <<'EOF'
#!/bin/bash
# Установка для Rocknix OS
sudo cp -v ../../bin/0tpulta /usr/bin/
sudo cp -v 0tpulta.service /etc/systemd/system/
sudo systemctl enable 0tpulta
EOF

# Скрипт сборки
cat > tools/build_rocknix.sh <<'EOF'
#!/bin/bash
# Собирает .zip для PortMaster
zip -r ptt_radio_rocknix.zip \
    platforms/rocknix/portmaster/* \
    bin/0tpulta \
    config/rocknix/*
EOF