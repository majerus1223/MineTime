#!/bin/bash

while :
do
	gpuFanSpeed=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=fan.speed |grep -o '^[^ ]*')
	gpuPowerDraw=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=power.draw |grep -o '^[^ ]*')
	gpuTemp=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=temperature.gpu |grep -o '^[^ ]*')
	gpuUtil=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=utilization.gpu |grep -o '^[^ ]*')
	#Graphics clock rate the query language blows
	gpuClock=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=clocks.gr |grep -o '^[^ ]*')
	gpuMemClock=$(nvidia-smi -i 0 --format=csv,noheader --query-gpu=clocks.mem | grep -o '^[^ ]*')
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuFanSpeed value=$gpuFanSpeed"
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuPowerDraw value=$gpuPowerDraw"
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuTemp value=$gpuTemp"
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuUtil value=$gpuUtil"
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuClock value=$gpuClock"
	curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu0-Miner12,stat=gpuMemClock value=$gpuMemClock"
	echo "alive, CTRL + C to stop"
	sleep 58

done
