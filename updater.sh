#!/bin/bash
cd /data/data/com.termux/files/home/
if [ -e "roblox" ]; then
	rm -rf roblox
fi
rm -rf /data/data/com.termux/files/usr/roblox
git clone https://github.com/dgbaodev2407/roblox
wget -O roblox/com.roblox.cliena.pack https://github.com/dgbaodev2407/roblox/releases/download/Roblox-Pack/Codex_1.pack
mv roblox/Codex_2.pack roblox/com.roblox.clienb.pack
mv roblox/Codex_3.pack roblox/com.roblox.clienc.pack
mv roblox/Codex_4.pack roblox/com.roblox.cliend.pack
mv roblox/Codex_5.pack roblox/com.roblox.cliene.pack
mv roblox/Codex_6.pack roblox/com.roblox.clienf.pack
mv roblox/Codex_7.pack roblox/com.roblox.clieng.pack
mv roblox/Codex_8.pack roblox/com.roblox.clienh.pack
mv roblox/Codex_9.pack roblox/com.roblox.clieni.pack
mv roblox/Codex_10.pack roblox/com.roblox.clienj.pack
cp roblox/updater.sh /data/data/com.termux/files/usr/bin/updater
chmod +x /data/data/com.termux/files/usr/bin/updater
wget "https://raw.githubusercontent.com/hjkbvf/a/refs/heads/main/Rejoin-minh.py" -O roblox/Rejoin.py
mv roblox /data/data/com.termux/files/usr/roblox
cd /data/data/com.termux/files/usr/roblox && sudo python /data/data/com.termux/files/usr/roblox/updater.py
echo "Done"
