MineTime

Useful Commands

Generic Information
    
    nvidia-smi

Will Set Power to a specific power target (watts)

    nvidia-smi -pl 180


Will show current power draw

    nvidia-smi --query-gpu=power.draw --format=csv,noheader

List GPU Temp and other data
    
    nvidia-smi -q -a
    
List GPUS
    
    nvidia-smi -L

View Performance State

    nvidia-smi -q -d PERFORMANCE



Add ability to manually control GPUS (enable cool bits)

    nvidia-xconfig --enable-all-gpus
    nvidia-xconfig --cool-bits=12

Restart windows manager after making changes or just reboot

    systemctl restart lightdm.service
    

Set NVIDIA power to persistance level 1 (need to research this more)

    sudo nvidia-smi -pm 1

Controlling GPU fan and clocking

    Launch Nvidia Settings for GUI
    
OR

    nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=85
    
    

Driver Continue
    Download latest driver from nvidia
    alt + Ctrl + f1
    sudo service lighdm stop
    sudo init 3
    cd Desktop/
    sudo chmod +x NvidiaDriver
    sudo ./NvidiaDriver
    
    
    https://askubuntu.com/questions/760934/graphics-issues-after-while-installing-ubuntu-16-04-16-10-with-nvidia-graphics
    
    
Driver Info

    https://askubuntu.com/questions/206283/how-can-i-uninstall-a-nvidia-driver-completely