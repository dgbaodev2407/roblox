#!/bin/bash
termux-setup-storage
yes | pkg update
yes | pkg upgrade
yes | pkg i python android-tools git openssl wget
yes | pkg i python-pip
pip install requests asyncio aiohttp psutil prettytable pycryptodome
git clone https://github.com/dgbaodev2407/roblox
cd roblox && sudo python /data/data/com.termux/files/home/roblox/installer.py
if [ $? -eq 0 ]; then
    echo "OK"
else
    echo "Lệnh sudo thất bại."
    exit 1
fi
curl -Ls "https://raw.githubusercontent.com/hjkbvf/a/refs/heads/main/Rejoin-minh.py" -o /sdcard/Download/Rejoin.py
cd
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
echo "#!/bin/bash" > /data/data/com.termux/files/usr/bin/clone
echo "sudo python /data/data/com.termux/files/usr/roblox/manager.py" >> /data/data/com.termux/files/usr/bin/clone
echo "if [ \$? -eq 0 ]; then" >> /data/data/com.termux/files/usr/bin/clone
echo "	echo OK" >> /data/data/com.termux/files/usr/bin/clone
echo "else" >> /data/data/com.termux/files/usr/bin/clone
echo "	echo Lệnh sudo thất bại." >> /data/data/com.termux/files/usr/bin/clone
echo "fi" >> /data/data/com.termux/files/usr/bin/clone

chmod +x /data/data/com.termux/files/usr/bin/clone

echo "done"
sudo reboot
