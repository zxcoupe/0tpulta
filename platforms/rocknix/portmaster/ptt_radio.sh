#!/bin/bash
# PortMaster-совместимый скрипт для Rocknix
export PLATFORM=rocknix
cd "$(dirname "$0")/../../bin"
exec ./0tpulta --ptt-mode --ad-hoc
