#!/bin/bash
git clone https://github.com/dgbaodev2407/roblox
rm -rf /data/data/com.termux/files/usr/roblox
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
sudo python /data/data/com.termux/files/usr/roblox/updater.py 
echo "#!/bin/bash" > /data/data/com.termux/files/usr/bin/updater
echo "sudo python /data/data/com.termux/files/usr/roblox/updater.py" >> /data/data/com.termux/files/usr/bin/updater
chmod +x /data/data/com.termux/files/usr/bin/updater
echo "Done"