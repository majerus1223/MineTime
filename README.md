MineTime

Useful Commands

Generic Information
    
    nvidia-smi

Will Set Power to a specific power target (watts)

    nvidia-smi -pl 180


Will show current power draw

    nvidia-smi --query-gpu=power.draw --format=csv,noheader


Add ability to manually control GPUS (enable cool bits)

    nvidia-xconfig --enable-all-gpus
    nvidia-xconfig --cool-bits=12

Restart windows manager after making changes or just reboot

    systemctl restart lightdm.service
    

Set NVIDIA power to power level 1, 2, or 3 (need to research this more)

    sudo nvidia-smi -pm 1

Controlling GPU fan and clocking

    Launch Nvidia Settings for GUI
    
OR

    nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=85