#!/bin/bash


#list GPUS

nvidia-smi -L

print "Setting enable all GPUS"
nvidia-xconfig --enable-all-gpus

print "Enable coolbits"
nvidia-xconfig --cool-bits=12

print "System needs reboot"