#!/bin/bash


#list GPUS

nvidia-smi -L

echo "Setting enable all GPUS"
nvidia-xconfig --enable-all-gpus

echo "Enable coolbits"
nvidia-xconfig --cool-bits=12

systemctl restart lightdm.service

echo "System needs reboot"