vim.pack.add({
    { src = "https://github.com/selimacerbas/live-server.nvim" },
    { src = "https://github.com/selimacerbas/markdown-preview.nvim" },
})

require("markdown_preview").setup({
    instance_mode = "takeover",
    port = 0,
    open_browser = true,
    default_theme = "dark",
    debounce_ms = 300,
})
