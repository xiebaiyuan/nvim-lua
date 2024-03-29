-- 简化按键映射
-- function map(mode, shortcut, command)
--   vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
-- end
local map = require("core.utils").map

-- 设置leader键
vim.g.mapleader = " "

-- Ctrl+q退出
map('n', '<C-q>', ':q<CR>')

-- 快速分屏
map('n', 'sl', ':set splitright<CR>:vsplit<CR>')
map('n', 'sh', ':set nosplitright<CR>:vsplit<CR>')
map('n', 'sj', ':set splitright<CR>:split<CR>')
map('n', 'sk', ':set nosplitright<CR>:split<CR>')

-- 在分屏间移动
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- 改变窗口大小
map('n', '<up>', ':res +5<CR>')
map('n', '<down>', ':res -5<CR>')
map('n', '<left>', ':vertical resize-5<CR>')
map('n', '<right>', ':vertical resize+5<CR>')

-- 历史修改记录
map('n', '<A-u>', ':UndotreeToggle<CR>')

-- 文件树
map('n', '<A-t>', ':NvimTreeToggle<CR>')

-- 格式化
map('n', '<leader>fm', ':Autoformat<CR>')

-- 保存时用suda写入
map('n', '<A-s>', ':SudaWrite<CR>')

-- Y复制到系统剪切板
map('v', 'Y', [["+y]])

-- 一键编译/运行/编译运行
map('n', '<F8>', ':w<CR> | :AsyncTask file-build<CR>')
map('n', '<F9>', ':w<CR> | :AsyncTask file-run<CR>')
map('n', '<F10>', ':w<CR> | :AsyncTask file-build<CR> | :AsyncTask file-run<CR>')

-- 开启/关闭函数列表
map('n', '<A-f>', ':Vista<CR>')

-- 创建表格
map('n', '<leader>tm', ':TableModeToggle<CR>')

-- markdown预览
map('n', '<A-r>', ':MarkdownPreviewToggle<CR>')
