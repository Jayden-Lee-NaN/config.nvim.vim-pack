-- 文件功能: 对Nvim进行基础的设置
------------------------------基本设置------------------------------
-- 设置行号显示和相对行号显示
vim.o.number = true
vim.o.relativenumber = true

-- 设置字体相关
vim.o.cursorline = true
-- vim.o.guifont = "RobotoMono:16"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- 设置文本编码格式
vim.opt.encoding = "utf-8"                                      -- 默认编码格式
vim.opt.fileencodings = "utf-8, gb2312, gbk, gb18030"           -- 支持编码列表

-- 与系统剪切板对接
-- vim.o.clipboard = "unnamed"

-- 设置不同模式下的光标类型
-- vim.opt.guicursor = "n-v-c:block"

-- 开启内嵌显示
vim.lsp.inlay_hint.enable(true)

-- 设置折叠的方式
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99

vim.opt.list = true
vim.opt.listchars = {
    tab = "»·",
    trail = "□",
    nbsp = "␣",
}
