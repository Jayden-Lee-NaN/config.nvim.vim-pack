vim.lsp.config('marksman', {
    cmd = {"marksman", "server"},
    filetypes = {"markdown"},
    root_markers = {".marksman.toml", ".git"},
})

vim.lsp.enable('marksman')
