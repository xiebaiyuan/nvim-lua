#!/bin/bash

cd ..
rm -rf ~/Desktop/nvim-lua/lua ~/Desktop/nvim-lua/init.lua ~/Desktop/nvim-lua/README.md
cp init.lua ~/Desktop/nvim-lua/
cp README.md ~/Desktop/nvim-lua/
cp -r lua ~/Desktop/nvim-lua/
rm -f ~/Desktop/nvim-lua/script/install.sh
rm -f ~/Desktop/nvim-lua/script/Upload.sh
cp script/Upload.sh ~/Desktop/nvim-lua/script/
cp script/install.sh ~/Desktop/nvim-lua/script/
cd ~/Desktop/nvim-lua/
git remote set-url origin git@github.com:Eatsolx/nvim-lua.git
echo "复制成功"
read -s -n1 -p "按任意键继续 ... "
