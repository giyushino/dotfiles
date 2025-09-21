#!/bin/bash

# Get CPU temperature (works for most Linux distros)
cpu_temp=$(sensors | awk '/Core 0/ {print $3}' | tr -d '+°C')

# Get GPU temperature (NVIDIA)
gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)

# Print in the format expected by Waybar
echo "cpu ${cpu_temp}°C | gpu ${gpu_temp}°C"

