# libnb_script
fixes libhoudini's performance issue for amd cpu's and includes patches for blue archive

Install libhoudini from here
https://github.com/casualsnek/waydroid_script 

After that run script :) 

(This libnb is not mine, I just wrote bash script(with deepseek) and changed libnb.so name to libndk_translation.so because coc and cr crashing)

(Only work for android 11 libhoudini from waydroid_script)

Libnb from here

https://github.com/qwerty12356-wart/test_libnb

Builded with this flags

cmake . -B build -DSKIP_NB_ENABLED_CHECK=ON -DENABLE_EXPERIMENTAL_PATCHES=ON

cmake . -B build_x86 -DSKIP_NB_ENABLED_CHECK=ON -DCOMPILE_ARCH=x86 -DENABLE_EXPERIMENTAL_PATCHES=ON

special thanks to 
https://github.com/qwerty12356-wart
