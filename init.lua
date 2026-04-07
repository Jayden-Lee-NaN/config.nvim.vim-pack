------------------------------基础配置------------------------------
require('config.keymaps')  -- 键位
require('config.autocmds') -- 自动命令
require('config.options')  -- nvim基础配置

------------------------------插件配置------------------------------
require('plugin/nvim-lspconfig') -- lsp配置插件
require('plugin/blink-cmp') -- 代码补全插件
require('plugin/nvim-tree') -- 文件树插件

------------------------------lsp配置------------------------------
require('lsp/ty') -- Python的lsp

