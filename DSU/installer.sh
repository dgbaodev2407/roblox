#!/bin/bash

curl -o "$TMPDIR/dsuperuser" https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/DSU/dsuperuser

curl -o "$TMPDIR/dsudo" https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/DSU/dsudo

mkdir -p "$HOME/bin"

install -Dm755 "$TMPDIR/dsuperuser" "$HOME/bin/dsuperuser"

install -Dm755 "$TMPDIR/dsudo" "$HOME/bin/sudo"

rm -rf "$HOME/bin/su"
# rm -rf "$HOME/bin/sudo"

ln -ds "$HOME/bin/dsuperuser" "$HOME/bin/su"

# ln -ds "$HOME/bin/dsuperuser" "$HOME/bin/sudo"

export PATH="$HOME/bin:$PREFIX/bin:$PATH"

echo "export PATH=\"$HOME/bin:$PREFIX/bin:\$PATH\"" >> "$HOME/.bashrc"

# source "$HOME/.bashrc"

echo

dsuperuser --help

echo
echo "Đã cài đặt thành công dsuperuser!"
