vim.pack.add({
    {src = 'https://github.com/stevearc/conform.nvim'},
})

require('conform').setup({
    formatters_by_ft = {
        python = {"black"}, -- 设置Python的formatter为black
        c = {"clang_format"},
        cpp = {"clang_format"},
        h = {"clang_format"},
        hpp = {"clang_format"},
        cuda = {"clang_format"},
    },
    formatters = {
        clang_format = {
            prepend_args = {
                "--style=file",
                "--fallback-style=LLVM",
            },
        },
    },
    format_on_save = {
        timeout_ms = 5000,
        lsp_format = "fallback",
    },
})
