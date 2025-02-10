#!/bin/bash
cd /data/data/com.termux/files/home/
if [ -e "roblox" ]; then
	rm -rf roblox
fi
rm -rf /data/data/com.termux/files/usr/roblox
git clone https://github.com/dgbaodev2407/roblox
wget -O roblox/com.roblox.cliena.pack https://github.com/dgbaodev2407/roblox/releases/download/Roblox-Pack/Roblox_1.pack
mv roblox/Roblox_2.pack roblox/com.roblox.clienb.pack
mv roblox/Roblox_3.pack roblox/com.roblox.clienc.pack
mv roblox/Roblox_4.pack roblox/com.roblox.cliend.pack
mv roblox/Roblox_5.pack roblox/com.roblox.cliene.pack
mv roblox/Roblox_6.pack roblox/com.roblox.clienf.pack
mv roblox/Roblox_7.pack roblox/com.roblox.clieng.pack
mv roblox/Roblox_8.pack roblox/com.roblox.clienh.pack
mv roblox/Roblox_9.pack roblox/com.roblox.clieni.pack
mv roblox/Roblox_10.pack roblox/com.roblox.clienj.pack
cp roblox/updater.sh /data/data/com.termux/files/usr/bin/updater
chmod +x /data/data/com.termux/files/usr/bin/updater
mv roblox /data/data/com.termux/files/usr/roblox
cd /data/data/com.termux/files/usr/roblox && sudo python /data/data/com.termux/files/usr/roblox/updater.py
echo "Done"
