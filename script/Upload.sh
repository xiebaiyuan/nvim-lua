#!/bin/bash

cd ..
rm -rf ~/Desktop/nvim-lua/lua ~/Desktop/nvim-lua/plugin ~/Desktop/nvim-lua/init.lua
cp init.lua ~/Desktop/nvim-lua/
cp -r lua ~/Desktop/nvim-lua/
cd ~/Desktop/nvim-lua/
echo "复制成功"
read -s -n1 -p "按任意键继续 ... "
