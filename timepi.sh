#!/bin/bash

# Script: pitemp.sh
# Huats 2022
# This script will retrieve and log both the CPU and GPU temperature on the Raspberry Pi 4.

cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "Pi Temperature of $(hostname) @ $(date)" >> /home/ywfu/pitemp/templog.txt
echo "CPU Temperature is => $((cpu/1000)) C" >> /home/ywfu/pitemp/templog.txt
echo "GPU Temperature is => $(/opt/vc/bin/vcgencmd measure_temp)" >> /home/ywfu/pitemp/templog.txt
echo "----------------------------" >> /home/ywfu/pitemp/templog.txt
