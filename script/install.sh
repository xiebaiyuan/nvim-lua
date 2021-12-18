#!/bin/bash

cd ..
git clone https://github.com/NvChad/NvChad
rm -rf .git
cp -r NvChad/.git .
rm -rf NvChad
mv ~/.config/nvim ~/.config/NVIM.BAK
cp -r ../nvim-lua ~/.config/nvim
echo "安装成功，旧配置已保存至~/.config/NVIM.BAK"
read -s -n1 -p "按任意键继续 ... "
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
