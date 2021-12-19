#!/bin/bash

mv ~/.config/nvim ~/.config/NVIM.BAK
cp -r NvChad/git NvChad/.git
cp -r NvChad/github NvChad/.github
cp -r NvChad ~/.config/nvim
cp -r custom ~/.config/nvim/NvChad/
cp install.sh ~/.config/nvim/NvChad/
cp Upload.sh ~/.config/nvim/NvChad/
echo "安装成功，旧配置已保存至~/.config/NVIM.BAK"
read -s -n1 -p "按任意键继续 ... "
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
