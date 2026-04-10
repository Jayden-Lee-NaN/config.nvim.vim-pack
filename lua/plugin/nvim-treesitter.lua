vim.pack.add({
    {src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
})

require('nvim-treesitter').install({
    "python"
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "python",
    },
    callback = function(args)
        vim.treesitter.start(args.buf) -- 高亮

        vim.wo.foldmethod = "expr" -- 折叠
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

        vim.bo[args.buf].indentexpr =
        "v:lua.require'nvim-treesitter'.indentexpr()" -- 缩进
    end,
})
