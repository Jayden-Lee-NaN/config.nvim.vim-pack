# Neovim 配置

基于 Neovim 0.10+ 的个人配置，使用 `vim.pack` 管理插件，专注 Python / C / C++ / CUDA 开发。

## 插件列表

| 插件 | 用途 |
|------|------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP 基础框架 |
| [blink.cmp](https://github.com/saghen/blink.cmp) | 代码补全 (super-tab 预设) |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) | 文件树 |
| [catppuccin](https://github.com/catppuccin/nvim) | 主题配色 |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | 代码格式化 (保存时自动) |
| [neogen](https://github.com/danymat/neogen) | 注释生成 |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法解析/高亮/折叠 |
| [nvim-cursorline](https://github.com/ya2s/nvim-cursorline) | 光标行/词高亮 |

## LSP 支持

- **Python** — `ty`
- **C / C++ / CUDA** — `clangd` (带 background-index 和 clang-tidy)

## Formatter

| 语言 | 格式化工具 |
|------|-----------|
| Python | black |
| C/C++/CUDA | clang-format (LLVM 风格兜底) |

保存时自动格式化，LSP 格式化作为 fallback。

## 快捷键

leader 键为 `<Space>`。

### 编辑

| 快捷键 | 功能 |
|--------|------|
| `jj` | 退出插入模式 |
| `W` | 保存 |
| `Q` | 退出 |
| `j` / `k` | 按视觉行移动 (支持 count) |

### 分屏

| 快捷键 | 功能 |
|--------|------|
| `<leader>sl` | 垂直分屏，光标移到右侧 |
| `<leader>sh` | 垂直分屏，光标移到左侧 |
| `<leader>sj` | 水平分屏，光标移到下方 |
| `<leader>sk` | 水平分屏，光标移到上方 |
| `<Left>/<Right>` | 调整分屏宽度 |
| `<Up>/<Down>` | 调整分屏高度 |

### 导航

| 快捷键 | 功能 |
|--------|------|
| `<leader>[` / `]` | 跳转历史 (jump back / forward) |
| `Ctrl+t` | 打开文件树 |

### LSP

| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳到定义 |
| `gD` | 跳到声明 |
| `gr` | 查看引用 |
| `gri` | 跳到实现 |
| `grt` | 跳到类型定义 |
| `K` | 悬停文档 |
| `Ctrl+k` | 签名帮助 |
| `<leader>rn` | 重命名 |
| `<leader>ca` | 代码操作 (Code Action) |
| `[d` / `]d` | 上一个/下一个诊断 |
| `<leader>e` | 诊断浮窗 |
| `<leader>q` | 诊断位置列表 |

### 代码生成

| 快捷键 | 功能 |
|--------|------|
| `<leader>nf` | 生成文档注释 (neogen) |

## 基础设置

- 行号 + 相对行号
- 光标行高亮 (nvim-cursorline, 1s 延迟)
- 光标词下划线高亮 (≥3 字符时)
- Tab 宽度 4，展开为空格
- 编码：UTF-8，同时兼容 GB2312/GBK/GB18030
- 缩进折叠 (`foldmethod=indent`)，Python 使用 treesitter 折叠
- LSP inlay hint 默认开启
- Yank 后短暂高亮 (300ms)
