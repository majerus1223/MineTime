#!/bin/bash

while :
do

	for i in {0..11}
	do
		gpuFanSpeed=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=fan.speed |grep -o '^[^ ]*')
	
		gpuPowerDraw=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=power.draw |grep -o '^[^ ]*')

		gpuTemp=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=temperature.gpu |grep -o '^[^ ]*')

		gpuUtil=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=utilization.gpu |grep -o '^[^ ]*')

		#Graphics clock rate the query language blows
		gpuClock=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=clocks.gr |grep -o '^[^ ]*')
	
		gpuMemClock=$(nvidia-smi -i $i --format=csv,noheader --query-gpu=clocks.mem | grep -o '^[^ ]*')


		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuFanSpeed value=$gpuFanSpeed""
		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuPowerDraw value=$gpuPowerDraw""
		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuTemp value=$gpuTemp""
		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuUtil value=$gpuUtil""
		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuClock value=$gpuClock""
		echo "curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuMemClock value=$gpuMemClock""

	done
	echo "Alive, CTRL + C to stop"
	sleep 58
done
