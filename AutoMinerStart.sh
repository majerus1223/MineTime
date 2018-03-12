#!/bin/bash
# Run as sudo!!

#Check whoami
if [ "$EUID" -ne 0 ]
  then echo "Run as root"
  exit
fi

#Start GPU and Monitoring
#Requires you to setup profile before hand.
#https://askubuntu.com/questions/46627/how-can-i-make-a-script-that-opens-terminal-windows-and-executes-commands-in-the

gnome-terminal -e ./allGpuHealthInfoReporting.sh --window-with-profile=Miner --geometry 100x15+50+820

echo "Started GPU Health Reporting..."
sleep 10

#Start GPU and Set Power
gnome-terminal -e ./BetaSpeedPowerOverclock.sh  

echo "Started BETA Speed, Power and Overlock......"


#Clean up locked files from crashed miner
echo "Cleaning up locks........."
rm -rf /home/noone/.cache/pytools/pdict-v2-pyopencl-invoker-cache-v1-py3.5.2.final.0/*.lock

sleep 10


#will fail if miner.default is not there.
/home/noone/Desktop/mining/miners/EggMinerGpuLin2/EggMinerGpuLin2 -i 50


