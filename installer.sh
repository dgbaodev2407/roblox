#!/bin/bash
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
if [ -e "/data/data/com.termux/files/usr/roblox" ]; then
    rm -rf /data/data/com.termux/files/usr/roblox
fi

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
mv roblox /data/data/com.termux/files/usr/
echo "#!/bin/bash" > /data/data/com.termux/files/usr/bin/clone
echo "sudo python /data/data/com.termux/files/usr/roblox/manager.py" >> /data/data/com.termux/files/usr/bin/clone
echo "if [ \$? -eq 0 ]; then" >> /data/data/com.termux/files/usr/bin/clone
echo "	echo OK" >> /data/data/com.termux/files/usr/bin/clone
echo "else" >> /data/data/com.termux/files/usr/bin/clone
echo "	echo Lệnh sudo thất bại." >> /data/data/com.termux/files/usr/bin/clone
echo "fi" >> /data/data/com.termux/files/usr/bin/clone
chmod +x /data/data/com.termux/files/usr/bin/clone
cd /data/data/com.termux/files/usr/roblox && sudo python /data/data/com.termux/files/usr/roblox/installer.py
if [ $? -eq 0 ]; then
    echo "OK"
else
    echo "Lệnh sudo thất bại."
    exit 1
fi
sudo reboot