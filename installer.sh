#!/bin/bash
echo "init..."
pkg update -y && pkg upgrade -y
pkg i tsu python3 git -y
git clone https://github.com/dgbaodev2407/roblox
cd roblox && sudo python installer.py
if [ $? -eq 0 ]; then
    echo "Lệnh sudo chạy thành công."
else
    echo "Lệnh sudo thất bại."
fi
echo "done"
