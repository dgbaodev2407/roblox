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
wget -O roblox/com.yulgang.ana.pack https://github.com/dgbaodev2407/roblox/releases/download/Roblox-Pack/Roblox_1.pack
mv roblox/Roblox_2.pack roblox/com.yulgang.anb.pack
mv roblox/Roblox_3.pack roblox/com.yulgang.anc.pack
mv roblox/Roblox_4.pack roblox/com.yulgang.and.pack
mv roblox/Roblox_5.pack roblox/com.yulgang.ane.pack
mv roblox/Roblox_6.pack roblox/com.yulgang.anf.pack
mv roblox/Roblox_7.pack roblox/com.yulgang.ang.pack
mv roblox/Roblox_8.pack roblox/com.yulgang.anh.pack
mv roblox/Roblox_9.pack roblox/com.yulgang.ani.pack
mv roblox/Roblox_10.pack roblox/com.yulgang.anj.pack
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
curl -Ls "https://raw.githubusercontent.com/hjkbvf/a/refs/heads/main/Rejoin-minh.py" -o /sdcard/Download/Rejoin.py
sudo reboot