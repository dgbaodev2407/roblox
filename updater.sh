#!/bin/bash
if [ -e "roblox" ]; then
	rm -rf roblox
fi
git clone https://github.com/dgbaodev2407/roblox
rm -rf /data/data/com.termux/files/usr/roblox
cd
wget -O roblox/Codex.pack https://github.com/dgbaodev2407/roblox/releases/download/Roblox-Pack/Codex.pack
mv roblox/Codex_0.pack roblox/com.roblox.cliena.pack
mv roblox/Codex_1.pack roblox/com.roblox.clienb.pack
mv roblox/Codex_2.pack roblox/com.roblox.clienc.pack
mv roblox/Codex_3.pack roblox/com.roblox.cliend.pack
mv roblox/Codex_4.pack roblox/com.roblox.cliene.pack
mv roblox/Codex_5.pack roblox/com.roblox.clienf.pack
mv roblox/Codex_6.pack roblox/com.roblox.clieng.pack
mv roblox/Codex_7.pack roblox/com.roblox.clienh.pack
mv roblox/Codex_8.pack roblox/com.roblox.clieni.pack
mv roblox/Codex_9.pack roblox/com.roblox.clienj.pack
mv roblox/Codex_10.pack roblox/com.roblox.clienk.pack
mv roblox /data/data/com.termux/files/usr/roblox
sudo python /data/data/com.termux/files/usr/roblox/updater.py 
cp roblox/updater.sh /data/data/com.termux/files/usr/bin/updater
#echo "#!/bin/bash" > /data/data/com.termux/files/usr/bin/updater
#echo "sudo python /data/data/com.termux/files/usr/roblox/updater.py" >> /data/data/com.termux/files/usr/bin/updater
chmod +x /data/data/com.termux/files/usr/bin/updater
echo "Done"
