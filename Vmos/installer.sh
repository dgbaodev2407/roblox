#!/bin/bash

curl -o "$TMPDIR/su" https://raw.githubusercontent.com/dgbaodev2407/roblox/refs/heads/main/Vmos/su

mkdir -p "$HOME/bin"

install -Dm755 "$TMPDIR/su" "$HOME/bin/dsuperuser"

rm -rf "$HOME/bin/su"

ln -ds "$HOME/bin/dsuperuser" "$HOME/bin/su"

echo "export PATH=\"$HOME/bin:$PREFIX/bin:\$PATH\"" >> "$HOME/.bashrc"