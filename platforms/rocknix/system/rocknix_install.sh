#!/bin/bash
# Установка для Rocknix OS
sudo cp -v ../../bin/0tpulta /usr/bin/
sudo cp -v 0tpulta.service /etc/systemd/system/
sudo systemctl enable 0tpulta
