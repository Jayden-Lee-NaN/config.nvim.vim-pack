vim.pack.add({
    {src = 'https://github.com/nvim-tree/nvim-tree.lua'},
})

-- 禁止nertw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeOpen<CR>', {noremap = true, silent = true})

require('nvim-tree').setup({

})
