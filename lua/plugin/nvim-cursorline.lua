vim.pack.add({
    {src = 'https://github.com/ya2s/nvim-cursorline'},
})
require('nvim-cursorline').setup {
    disable_filetypes = {},
    disable_buftypes = {},
    cursorline = {
        enable = true,
        timeout = 1000,
        number = false,
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
    }
}
