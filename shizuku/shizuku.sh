#!/bin/bash

cd $TMPDIR
curl -o ./rish https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/shizuku/rish
curl -o ./rish_shizuku.dex https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/shizuku/rish_shizuku.dex
install -Dm755 ./rish "$PREFIX/bin/rish"
install -Dm400 ./rish_shizuku.dex "$PREFIX/bin/rish_shizuku.dex"

mv "$PREFIX/bin/su" "$PREFIX/bin/superuser"
ln -ds "$PREFIX/bin/rish" "$PREFIX/bin/su"

cd -