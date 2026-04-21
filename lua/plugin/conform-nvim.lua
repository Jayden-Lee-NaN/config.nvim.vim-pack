vim.pack.add({
    {src = 'https://github.com/stevearc/conform.nvim'},
})

require('conform').setup({
    formatters_by_ft = {
        python = {"black"}, -- 设置Python的formatter为black
    },
    format_on_save = {
        timeout_ms = 5000,
        lsp_format = "fallback",
    },
})
