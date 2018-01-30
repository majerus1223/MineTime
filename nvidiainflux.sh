#!/bin/bash


gpuFanSpeed=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=fan.speed |grep -o '^[^ ]*')

gpuPowerDraw=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=power.draw |grep -o '^[^ ]*')

gpuTemp=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=temperature.gpu |grep -o '^[^ ]*')

gpuUtil=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=utilization.gpu |grep -o '^[^ ]*')

#Graphics clock rate the query language blows
gpuClock=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=clocks.gr |grep -o '^[^ ]*')

gpuMemClock=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=clocks.mem | grep -o '^[^ ]*')



echo $gpuFanSpeed $gpuPowerDraw $gpuTemp $gpuUtil $gpuClock $gpuMemClock


