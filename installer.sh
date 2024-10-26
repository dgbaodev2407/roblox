#!/bin/bash
echo "init..."
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo "N" > .inp
echo >> .inp
pkg update -y && pkg upgrade -y < .inp
pkg i tsu python3 git openssl wget -y < .inp
pip install requests
#pip install apkutils
git clone https://github.com/dgbaodev2407/roblox
cd roblox && sudo python /data/data/com.termux/files/home/roblox/installer.py
if [ $? -eq 0 ]; then
    echo "OK"
else
    echo "Lệnh sudo thất bại."
    exit 1
fi
cd
mv roblox/Delta_0.pack roblox/com.roblox.cliena.pack
mv roblox/Delta_1.pack roblox/com.roblox.clienb.pack
mv roblox/Delta_2.pack roblox/com.roblox.clienc.pack
mv roblox/Delta_3.pack roblox/com.roblox.cliend.pack
mv roblox/Delta_4.pack roblox/com.roblox.cliene.pack
mv roblox/Delta_5.pack roblox/com.roblox.clienf.pack
mv roblox/Delta_6.pack roblox/com.roblox.clieng.pack
mv roblox/Delta_7.pack roblox/com.roblox.clienh.pack
mv roblox/Delta_8.pack roblox/com.roblox.clieni.pack
mv roblox/Delta_9.pack roblox/com.roblox.clienj.pack
mv roblox/Delta_10.pack roblox/com.roblox.clienk.pack
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
