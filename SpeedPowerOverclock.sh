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


nvidia-smi -i 0 -pl 190
nvidia-smi -i 1 -pl 160
nvidia-smi -i 2 -pl 190
nvidia-smi -i 3 -pl 190
nvidia-smi -i 4 -pl 160
nvidia-smi -i 5 -pl 160
nvidia-smi -i 6 -pl 160
nvidia-smi -i 7 -pl 160
nvidia-smi -i 8 -pl 160
nvidia-smi -i 9 -pl 160
nvidia-smi -i 10 -pl 160
nvidia-smi -i 11 -pl 160



nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=185
nvidia-settings -a [gpu:1]/GPUGraphicsClockOffset[3]=240
nvidia-settings -a [gpu:2]/GPUGraphicsClockOffset[3]=240
nvidia-settings -a [gpu:3]/GPUGraphicsClockOffset[3]=240
#POS card keeps overheating no overclock
nvidia-settings -a [gpu:4]/GPUGraphicsClockOffset[3]=150
nvidia-settings -a [gpu:5]/GPUGraphicsClockOffset[3]=240 
nvidia-settings -a [gpu:6]/GPUGraphicsClockOffset[3]=240
nvidia-settings -a [gpu:7]/GPUGraphicsClockOffset[3]=240
#Crashed once
nvidia-settings -a [gpu:8]/GPUGraphicsClockOffset[3]=205
nvidia-settings -a [gpu:9]/GPUGraphicsClockOffset[3]=240
nvidia-settings -a [gpu:10]/GPUGraphicsClockOffset[3]=240
nvidia-settings -a [gpu:11]/GPUGraphicsClockOffset[3]=240