#!/bin/bash
cd /data/data/com.termux/files/home/
if [ -e "roblox" ]; then
	rm -rf roblox
fi
if [ -e "/data/data/com.termux/files/usr/roblox" ]; then
    rm -rf /data/data/com.termux/files/usr/roblox
fi

git clone https://github.com/dgbaodev2407/roblox
wget -O roblox/com.robloa.cliena.pack https://github.com/dgbaodev2407/roblox/releases/download/Roblox-Pack/Roblox_1.pack
mv roblox/Roblox_2.pack roblox/com.roblob.clienb.pack
mv roblox/Roblox_3.pack roblox/com.robloc.clienc.pack
mv roblox/Roblox_4.pack roblox/com.roblod.cliend.pack
mv roblox/Roblox_5.pack roblox/com.robloe.cliene.pack
mv roblox/Roblox_6.pack roblox/com.roblof.clienf.pack
mv roblox/Roblox_7.pack roblox/com.roblog.clieng.pack
mv roblox/Roblox_8.pack roblox/com.robloh.clienh.pack
mv roblox/Roblox_9.pack roblox/com.robloi.clieni.pack
mv roblox/Roblox_10.pack roblox/com.robloj.clienj.pack
cp roblox/updater.sh /data/data/com.termux/files/usr/bin/updater
chmod +x /data/data/com.termux/files/usr/bin/updater
mv roblox /data/data/com.termux/files/usr/
cd /data/data/com.termux/files/usr/roblox && sudo python /data/data/com.termux/files/usr/roblox/updater.py
echo "Done"
