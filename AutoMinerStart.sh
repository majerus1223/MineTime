#!/bin/bash
# Run as sudo!!

#Check whoami
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Start GPU and Monitoring
#Requires you to setup profile before hand.
#https://askubuntu.com/questions/46627/how-can-i-make-a-script-that-opens-terminal-windows-and-executes-commands-in-the

gnome-terminal -e ./allGpuHealthInfoReporting --window-with-profile=Miner


#Start GPU and Set Power
gnome-terminal -e ./BetaSpeedPowerOverclock.sh --window-with-profile=Miner 


#Clean up locked files from crashed miner
rm -rf /home/noone/.cache/pytools/pdict-v2-pyopencl-invoker-cache-v1-py3.5.2.final.0/*.lock


while true
do
/home/noone/Desktop/mining/miners/EggMinerGpuLin2/EggMinerGpuLin2 -i 50 

done