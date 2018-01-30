nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=175 
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=-750

nvidia-settings -a [gpu:1]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:1]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:2]/GPUGraphicsClockOffset[3]=175
nvidia-settings -a [gpu:2]/GPUMemoryTransferRateOffset[3]=-750

nvidia-settings -a [gpu:3]/GPUGraphicsClockOffset[3]=175 
nvidia-settings -a [gpu:3]/GPUMemoryTransferRateOffset[3]=-750

nvidia-settings -a [gpu:4]/GPUGraphicsClockOffset[3]=243 
nvidia-settings -a [gpu:4]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:5]/GPUGraphicsClockOffset[3]=243 
nvidia-settings -a [gpu:5]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:6]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:6]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:7]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:7]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:8]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:8]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:9]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:9]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:10]/GPUGraphicsClockOffset[3]=243 
nvidia-settings -a [gpu:10]/GPUMemoryTransferRateOffset[3]=-1450

nvidia-settings -a [gpu:11]/GPUGraphicsClockOffset[3]=243
nvidia-settings -a [gpu:11]/GPUMemoryTransferRateOffset[3]=-1450

cd $home
cd Desktop/mining/miners/EggMinerGpuLin2/
./mine-default.sh
