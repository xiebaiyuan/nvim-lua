<h1 align="center"> ✨ My nvim-lua configuration ✨ </h1>

### Introduction
My configuration is based on [nvchad](https://github.com/NvChad/NvChad), which is a great framework and highly recommended to get to know.

It is recommended that those who are able to do so can configure themselves through this framework.

### Install
Install it & it's plugins with:

    git clone https://github.com/Eatsolx/nvim-lua
    cd nvim-lua/script
    sh install.sh

It will backup your original configuration to ~/.config/NVIM.BAK

### Usage  (Incomplete)

#### Non plugin mappings
|  Action | Key  |
|  :----:   | :----: |
| save file  | 	ctrl + s |
| exit  | ctrl + q |
| close buffer | space + x |
| new buffer | shift + t |
| new tab | ctrl + t + b |
| theme toggler | space + t + h |

#### Navigation in insert mode
| Action | Key |
| :----: | :----: |
| backward | ctrl + h |
| end of line | ctrl + e |
| forward | ctrl + l |
| next line | ctrl + j |
| prev line | ctrl + k |
| top of line | ctrl + a |

#### Better window movement
| Action | Key |
| :----: | :----: |
| moveLeft | ctrl + h |
| moveRight | ctrl + l |
| moveUp | ctrl + k |
| moveDown | ctrl + j |

#### Terminal related mappings
| Action | Key |
| :----: | :----: |
| esc termmode | jk |
| esc hide termmode | JK |
| pick term | space + W |
| new horizontal | space + h |
| new vertical | space + v |
| new window | space + w |
| update nvchad | space + u + u |

#### Plugins related mappings
| Action | Key |
| :----: | :----: |
| BUFFERLINE | 
| next buffer | tab |
| prev buffer | shift + tab |
| ----------- | ----------- |
| DASHBOARD |
| bookmarks | space + b + m |
| new file | space + f + n |
| open | space + d + b |
| find file | space + f + f |
| session load | space + l |
| session save | space + s |
| ----------- | ----------- |
| BETTER ESCAPE |
| esc insertmode | jk |
| ----------- | ----------- |
| FILE TREE/EXPLORER |
| toggle | space + t |
| focus	| space + e |
| universal code formatter |
| format | space + f + m |
| ----------- | ----------- |
| OTHER |
| undotree | space + u |
| vista | space + f |
| visual-multi | ctrl + n |
