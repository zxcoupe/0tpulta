#!/bin/bash

# Detect platform
if [ -f /etc/jelos-release ]; then
    PLATFORM="jelos"
elif [ -f /etc/rocknix-release ]; then
    PLATFORM="rocknix"
else
    echo "Unsupported platform"
    exit 1
fi

# Install dependencies
case $PLATFORM in
    jelos)
        sudo apt-get install -y libalsaplayer-dev libadpcm-dev
        ;;
    rocknix)
        sudo yum install -y alsa-lib-devel
        ;;
esac

# Install binaries
sudo cp build/0tpulta /usr/local/bin/
sudo cp tools/scripts/ptt_*.sh /usr/local/bin/

echo "Installation complete for $PLATFORM"
