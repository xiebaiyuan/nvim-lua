#!/bin/bash

rm -rf ~/Desktop/nvim-lua/README.md
cp README.md ~/Desktop/nvim-lua/
rm -f ~/Desktop/nvim-lua/script/install.sh ~/Desktop/nvim-lua/script/Upload.sh
cp Upload.sh ~/Desktop/nvim-lua/script/
cp install.sh ~/Desktop/nvim-lua/script/
rm -rf ~/Desktop/nvim-lua/custom
cp -r lua/custom ~/Desktop/nvim-lua/
cd ~/Desktop/nvim-lua/
rm -rf NvChad
git clone https://github.com/NvChad/NvChad
rm -rf NvChad/examples
mv NvChad/.git git
mv NvChad/.github github
git remote set-url origin git@github.com:Eatsolx/nvim-lua.git
echo "复制成功"
read -s -n1 -p "按任意键继续 ... "
