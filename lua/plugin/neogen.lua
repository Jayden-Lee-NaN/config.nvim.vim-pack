vim.pack.add({
    {src = 'https://github.com/danymat/neogen'},
})

require('neogen').setup({

})

vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", { noremap = true, silent = true })
