#!/bin/bash

while :
do
	#cat /home/noone/Desktop/log2.out
	for i in {0..11}
	do
		
		gpuBisRate=$(sed -n "/GPU$i/p" /home/noone/Desktop/log2.out |tail -1 |sed "/GPU$i/!d;s/.*GPU$i \([0-9]*\).*/\1/")
		curl -i -XPOST 'http://97.91.132.129:9626/write?db=Mining' --data-binary "Stat_data,host=Gpu$i-Miner12,stat=gpuBisRate value=$gpuBisRate"
	done
	cat /home/noone/Desktop/log2.out
	echo > $HOME/Desktop/log2.out
	echo "Alive, CTRL + C to stop"
	
	sleep 20
done

