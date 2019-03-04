#!/bin/bash
for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
    do echo "1600000" > $file
done

for file in /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
    do echo "power" > $file
done


echo "Current CPU Frequencies"
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq
echo "-----------------------"

echo "Current CPU Power Pref"
cat /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
echo "-----------------------"
