#!/bin/bash

add-apt-repository ppa:graphics-drivers/ppa -y 
apt-get update
sleep 5

apt-get install htop screen git openssh-server sysstat -y
apt-get install nvidia-387 -y
mkdir -p $HOME/Desktop/mining/downloads
mkdir -p $HOME/Desktop/mining/scripts
mkdir -p $HOME/Desktop/mining/other
mkdir -p $HOME/Desktop/mining/miners

service ssh start

#Download Teamviewer & Miner

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O $HOME/Desktop/mining/downloads/teamviewer_amd64.deb

wget https://eggpool.net/dl/EggMinerGpuLin2.tgz -O $HOME/Desktop/mining/downloads/EggMiner.tgz.gz

tar -xvzf $HOME/Desktop/mining/downloads/EggMiner.tgz.gz -C $HOME/Desktop/mining/miners

chmod 777 $HOME/Desktop/mining/downloads/teamviewer_amd64.deb

#install teamviewer
dpkg -i $HOME/Desktop/mining/downloads/teamviewer_amd64.deb
#resolve dependencies
apt-get -f install -y 

git -C $HOME/Desktop/mining/scripts/ clone https://github.com/majerus1223/MineTime

# Copy configured miner.txt
cp $HOME/Desktop/mining/scripts/MineTime/miner.txt $HOME/Desktop/mining/miners/EggMinerGpuLin2/miner.txt

# Move miner-deafult.sh to miner.sh
cp $HOME/Desktop/mining/miners/EggMinerGpuLin2/mine-default.sh $HOME/Desktop/mining/miners/EggMinerGpuLin2/miner.sh
sleep 10

#Set insane permissions
chmod 777 -R $HOME/Desktop/mining 

