#! /bin/sh
#現在の明るさ
BRIGHTNESS=`cat /sys/class/backlight/intel_backlight/brightness`
MAX_BRIGHTNESS=`cat /sys/class/backlight/intel_backlight/max_brightness`
new=`expr $BRIGHTNESS + 100`
if [ $new -le $MAX_BRIGHTNESS ];then
    echo $new > /sys/class/backlight/intel_backlight/brightness;
fi;

