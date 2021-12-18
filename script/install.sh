#!/bin/bash

cd ..
mv ./.git git
mv ./.github github
cp -r script/NvChad/git ./.git
cp -r script/NvChad/github ./.github
mv ~/.config/nvim ~/.config/NVIM.BAK
cp -r ../nvim-lua ~/.config/nvim
rm -rf ./.git ./.github
mv git ./.git
mv github ./.github
rm -rf ~/.config/nvim/script
echo "安装成功，旧配置已保存至~/.config/NVIM.BAK"
read -s -n1 -p "按任意键继续 ... "
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
