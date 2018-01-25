#!/bin/bash

add-apt-repository ppa:graphics-drivers/ppa -y 
apt-get update
sleep 5
#remove nvidia-387
apt-get install htop screen git openssh-server -y
mkdir -p $HOME/Desktop/mining/downloads
mkdir -p $HOME/Desktop/mining/scripts
mkdir -p $HOME/Desktop/mining/other
mkdir -p $HOME/Desktop/mining/miners

service ssh start

#Download Miner

wget https://eggpool.net/dl/EggMinerGpuLin2.tgz?1516891778 -O $HOME/Desktop/mining/downloads/EggMiner.tgz.gz

tar -xvzf $HOME/Desktop/mining/downloads/EggMiner.tgz.gz -C $HOME/Desktop/mining/miners

git -C $HOME/Desktop/mining/scripts/ clone https://github.com/majerus1223/MineTime

#Set insane permissions
chmod 777 -R $HOME/Desktop/mining 

shutdown -r now