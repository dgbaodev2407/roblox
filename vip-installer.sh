#!/bin/bash
if [ -e "/data/data/com.termux/files/home/storage" ]; then
	rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
yes | pkg upgrade
yes | pkg i python android-tools git openssl wget tsu
yes | pkg i python-pip
pip install requests asyncio aiohttp psutil prettytable pycryptodome wget

cd /data/data/com.termux/files/home/
if [ -e "roblox" ]; then
	rm -rf roblox
fi

git clone https://github.com/dgbaodev2407/roblox

curl -Ls "https://raw.githubusercontent.com/hjkbvf/a/refs/heads/main/Rejoin-minh.py" -o /sdcard/Download/Rejoin.py

cd /data/data/com.termux/files/home/roblox && sudo python /data/data/com.termux/files/home/roblox/tools.py
err=$?
if [ $err -eq 0 ]; then
    echo "OK"
else
    echo "Error Code: $err."
    exit 1
fi