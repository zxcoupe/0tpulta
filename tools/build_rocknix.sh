#!/bin/bash
# Собирает .zip для PortMaster
zip -r ptt_radio_rocknix.zip \
    platforms/rocknix/portmaster/* \
    bin/0tpulta \
    config/rocknix/*
