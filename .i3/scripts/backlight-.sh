#! /bin/sh
#現在の明るさ
BRIGHTNESS=`cat /sys/class/backlight/intel_backlight/brightness`
new=`expr $BRIGHTNESS - 100`
if [ $new -ge 0 ];then
    echo $new > /sys/class/backlight/intel_backlight/brightness;
fi;

