------------------------------基础配置------------------------------
require('config.keymaps')  -- 键位
require('config.autocmds') -- 自动命令
require('config.options')  -- nvim基础配置

------------------------------插件配置------------------------------
require('plugin/nvim-lspconfig') -- lsp配置插件
require('plugin/blink-cmp') -- 代码补全插件
require('plugin/nvim-tree') -- 文件树插件
require('plugin/catppuccin') -- 主题
require('plugin/conform-nvim') -- formatter
require('plugin/neogen') -- 注释生成
require('plugin/nvim-treesitter') -- 代码解析
require('plugin/nvim-cursorline') -- cursorline
require('plugin/render-markdown') -- nvim内实时渲染的markdown preview
require('plugin/markdown-preview') -- 浏览器渲染的markdown preview

------------------------------lsp配置------------------------------
require('lsp/ty') -- Python 的 lsp
require('lsp/clangd') -- c/cpp/cuda 的 lsp
require('lsp/marksman') -- markdown 的 lsp

