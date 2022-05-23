#!/bin/bash

# Script: pitemp.sh
# Huats 2022
# This script will retrieve both the CPU and GPU temperature on the Raspberry Pi 4.

cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "Huats Pitemp Bash Script"
echo "Pi Temperature of $(hostname) @ $(date)"
echo "---------------------------------------"
echo "CPU Temperature is => $((cpu/1000)) C"
echo "GPU Temperature is => $(/opt/vc/bin/vcgencmd measure_temp)"

