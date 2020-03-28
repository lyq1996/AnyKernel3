#!/system/bin/sh

# sched governor Select
#echo "schedhorizon" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#echo "schedhorizon" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
#echo "825600 1036800 1094400" > /sys/devices/system/cpu/cpu0/cpufreq/schedhorizon/efficient_freq
#echo "30 30 40" > /sys/devices/system/cpu/cpu0/cpufreq/schedhorizon/up_delay
#echo "806400 1190400 1958400" > /sys/devices/system/cpu/cpu2/cpufreq/schedhorizon/efficient_freq
#echo "30 30 40" > /sys/devices/system/cpu/cpu2/cpufreq/schedhorizon/up_delay

# schedTune
echo "1" > /dev/stune/foreground/schedtune.prefer_idle
echo "1" > /dev/stune/top-app/schedtune.prefer_idle
echo "0" > /dev/stune/top-app/schedtune.boost
echo "5" > /dev/stune/top-app/schedtune.sched_boost

# dynamic stune boost
# echo "1" > /sys/module/cpu_boost/parameters

# cpuset
echo "0-3,6-7" > /dev/cpuset/foreground/cpus
echo "0-3" > /dev/cpuset/restricted/cpus

# set min cpu freq
echo 300000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 300000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq

devices=$(getprop ro.product.vendor.device)
if [ "$devices" = "OnePlus5T" ] || [ "$devices" = "dumpling" ]; then
    echo 370 > /proc/fliker_free/min_brightness
    echo 1 > /proc/fliker_free/fliker_free
fi
if [ "$devices" = "OnePlus5" ] || [ "$devices" = "cheeseburger" ]; then
    echo 66 > /proc/fliker_free/min_brightness
    echo 1 > /proc/fliker_free/fliker_free
fi
