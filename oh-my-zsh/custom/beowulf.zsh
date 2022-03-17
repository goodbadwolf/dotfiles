#!/bin/zsh 

if [ "$(hostname)" = "beowulf"  ]; then
    xreset() {
        xrandr \
            --output HDMI-0 --mode 2560x1440 --pos 1309x0 --rotate normal --size 2560x1440 \
            --output DP-2 --mode 2560x1440 --pos 2560x1440 --rotate normal \
            --output DP-4 --primary --mode 2560x1440 --pos 0x1440 --rotate normal
    }
    # source ~/apps/fix_displays.sh
fi
