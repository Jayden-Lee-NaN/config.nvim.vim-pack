-- 文件功能: 键位映射
------------------------------基础配置------------------------------
local key_map_opt = { noremap = true, silent = true }
vim.g.mapleader = " " 					-- 使用" "作为leader按键


-- 插入模式键位映射
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', key_map_opt)

-- 普通模式键位映射
vim.api.nvim_set_keymap('n', 'W', ':w<CR>', key_map_opt)
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', key_map_opt)
vim.api.nvim_set_keymap('n', 'j', [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.api.nvim_set_keymap('n', 'k', [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

------------------------------功能映射------------------------------
-- 分屏映射
vim.api.nvim_set_keymap('n', '<leader>sl', ':vsplit<CR><C-w>l', key_map_opt)
vim.api.nvim_set_keymap('n', '<leader>sh', ':vsplit<CR><C-w>h', key_map_opt)
vim.api.nvim_set_keymap('n', '<leader>sj', ':split<CR><C-w>j', key_map_opt)
vim.api.nvim_set_keymap('n', '<leader>sk', ':split<CR><C-w>k', key_map_opt)

-- 分屏大小设置
vim.api.nvim_set_keymap('', '<Left>', ':vertical resize-2<CR>', key_map_opt)
vim.api.nvim_set_keymap('', '<Right>', ':vertical resize+2<CR>', key_map_opt)
vim.api.nvim_set_keymap('', '<Up>', ':res +2<CR>', key_map_opt)
vim.api.nvim_set_keymap('', '<Down>', ':res -2<CR>', key_map_opt)

-- 标签页切换
vim.api.nvim_set_keymap('n', '<leader>[', '<C-o>', key_map_opt)
vim.api.nvim_set_keymap('n', '<leader>]', '<C-i>', key_map_opt)

-- 查看错误
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic error messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
