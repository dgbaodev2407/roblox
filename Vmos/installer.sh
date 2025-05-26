#!/bin/bash

curl -o "$TMPDIR/dsuperuser" https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/Vmos/dsuperuser

mkdir -p "$HOME/bin"

install -Dm755 "$TMPDIR/dsuperuser" "$HOME/bin/dsuperuser"

rm -rf "$HOME/bin/su" "$HOME/bin/sudo"

ln -ds "$HOME/bin/dsuperuser" "$HOME/bin/su"

ln -ds "$HOME/bin/dsuperuser" "$HOME/bin/sudo"

echo "export PATH=\"$HOME/bin:$PREFIX/bin:\$PATH\"" >> "$HOME/.bashrc"

PATH="$HOME/bin:$PATH"

# source "$HOME/.bashrc"

dsuperuser --help

echo
echo "Đã cài đặt thành công dsuperuser!"