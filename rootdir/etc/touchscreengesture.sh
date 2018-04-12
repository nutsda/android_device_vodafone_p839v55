#!/system/bin/sh

if [ -f /sys/class/input/input0/config_id ]; then
	SYNA_GESTURE_WAKEUP_FILE=/sys/bus/i2c/devices/5-0014/enable_gesture_wakeup
elif [ -f /sys/class/input/input9/config_id ]; then
        SYNA_GESTURE_WAKEUP_FILE=/sys/class/input/input9/wake_gesture
fi
	
if [ -f $SYNA_GESTURE_WAKEUP_FILE ]; then 
    echo $ENABLE_GESTURE_WAKEUP > $SYNA_GESTURE_WAKEUP_FILE
fii
