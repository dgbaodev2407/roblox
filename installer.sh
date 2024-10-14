#!/bin/bash
echo "init..."
echo "N" > .inp
echo >> .inp
pkg update -y && pkg upgrade -y < .inp
pkg i tsu python3 git apksigner openssl -y
#pip install apkutils
git clone https://github.com/dgbaodev2407/roblox
cd roblox && sudo python /data/data/com.termux/files/home/roblox/installer.py
if [ $? -eq 0 ]; then
    echo "OK"
else
    echo "Lệnh sudo thất bại."
fi
echo "done"