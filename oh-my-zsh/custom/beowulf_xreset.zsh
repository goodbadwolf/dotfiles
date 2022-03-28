if [ "$(hostname)" = "beowulf"  ]; then
    xreset() {
        xrandr \
            --output HDMI-0 --mode 2560x1440 --pos 1280x0 --rotate normal --size 2560x1440 --panning 0x0+0+0 \
            --output DP-2 --mode 2560x1440 --pos 2560x1440 --rotate normal \
            --output DP-4 --primary --mode 2560x1440 --pos 0x1440 --rotate normal

        sleep 1;
        xrandr --output HDMI-0 --pos 1280x0
    }
fi
