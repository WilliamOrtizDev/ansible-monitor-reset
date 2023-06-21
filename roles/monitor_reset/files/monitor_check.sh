#!/bin/bash

DISPLAY_PORTS=$(find /sys/class/drm | grep "DP-." | cut -d '-' -f 2,3)

for i in $DISPLAY_PORTS; do
    DISPLAY=$i;
    STATUS=$(cat /sys/class/drm/card0-$i/status);
    echo $DISPLAY $STATUS
done