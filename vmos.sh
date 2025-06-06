#!/bin/bash
if [ -e "/data/data/com.termux/files/home/storage" ]; then
	rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
. <(curl https://raw.githubusercontent.com/u400822/setup-termux/refs/heads/main/termux-change-repo.sh)
yes | pkg upgrade
yes | pkg i python android-tools git openssl wget xdelta3
yes | pkg i python-pip
pip install requests asyncio aiohttp psutil prettytable pycryptodome wget

cd /data/data/com.termux/files/home/
if [ -e "roblox" ]; then
	rm -rf roblox
fi

echo "Installing dsuperuser..."
. <(curl https://raw.githubusercontent.com/Roblox-Project-202X/DSuperUser/refs/heads/main/installer.sh)
if [ $? -ne 0 ]; then
    echo "Failed to install dsuperuser."
    exit 1
fi

git clone https://github.com/dgbaodev2407/roblox

cd /data/data/com.termux/files/home/roblox && sudo python /data/data/com.termux/files/home/roblox/tools.py
err=$?
if [ $err -eq 0 ]; then
    echo "OK"
else
    echo "Error Code: $err."
    exit 1
fi
