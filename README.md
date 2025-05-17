# libnb_script
fixes libhoudini's performance issue for amd cpu's and includes patches for blue archive

Only work for android 11 libhoudini from waydroid_script

# Installation
Install libhoudini from here
https://github.com/casualsnek/waydroid_script 
```
git clone https://github.com/YuryenUcahh/libnb_script
cd libnb_script/libnb_script/
chmod +x libnb_script.sh
sudo ./libnb_script.sh
```

# Notes

This libnb is not mine, I just wrote bash script(with deepseek) and changed libnb.so name to libndk_translation.so because Clash of Clans and Clash Royale crashing

You can build yourself from here https://github.com/qwerty12356-wart/test_libnb

Builded with this flags

cmake . -B build -DSKIP_NB_ENABLED_CHECK=ON -DENABLE_EXPERIMENTAL_PATCHES=ON

cmake . -B build_x86 -DSKIP_NB_ENABLED_CHECK=ON -DCOMPILE_ARCH=x86 -DENABLE_EXPERIMENTAL_PATCHES=ON

special thanks to 
https://github.com/qwerty12356-wart
