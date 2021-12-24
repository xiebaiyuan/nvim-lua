-- 简化绑定格式
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

local cmd = vim.api.nvim_command

-- 设置leader键
vim.g.mapleader = " "

-- Ctrl+q退出
nmap("<C-q>", ":q<CR>")

-- 快速分屏
nmap('sl', ':set splitright<CR>:vsplit<CR>')
nmap('sh', ':set nosplitright<CR>:vsplit<CR>')
nmap('sj', ':set splitright<CR>:split<CR>')
nmap('sk', ':set nosplitright<CR>:split<CR>')

-- 在分屏间移动
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- 改变窗口大小
nmap('<up>', ':res +5<CR>')
nmap('<down>', ':res -5<CR>')
nmap('<left>', ':vertical resize-5<CR>')
nmap('<right>', ':vertical resize+5<CR>')

-- 历史修改记录
nmap('<A-u>', ':UndotreeToggle<CR>')

-- 文件树
nmap('<A-t>', ':NvimTreeToggle<CR>')

-- 格式化
nmap('<leader>fm', ':Autoformat<CR>')

-- 保存时用suda写入
nmap('<A-s>', ':SudaWrite<CR>')

-- Y复制到系统剪切板
map('v', 'Y', [["+y]])

-- 一键编译/运行/编译运行
nmap('<F8>', ':w<CR> | :AsyncTask file-build<CR>')
nmap('<F9>', ':w<CR> | :AsyncTask file-run<CR>')
nmap('<F10>', ':w<CR> | :AsyncTask file-build<CR> | :AsyncTask file-run<CR>')

-- 开启/关闭函数列表
nmap('<A-f>', ':Vista<CR>')

-- 替换默认绑定
local hooks = require "core.hooks"

hooks.add("setup_mappings", function(map)
    -- map('n', '<A-s>', ':SudaWrite<CR>')
end)
