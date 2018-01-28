#!/bin/bash
nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:3]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:4]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:5]/GPUFanControlState=1 -a [fan:5]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:6]/GPUFanControlState=1 -a [fan:6]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:7]/GPUFanControlState=1 -a [fan:7]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:8]/GPUFanControlState=1 -a [fan:8]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:9]/GPUFanControlState=1 -a [fan:9]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:10]/GPUFanControlState=1 -a [fan:10]/GPUTargetFanSpeed=85
nvidia-settings -a [gpu:11]/GPUFanControlState=1 -a [fan:11]/GPUTargetFanSpeed=85


nvidia-smi -pl 160

