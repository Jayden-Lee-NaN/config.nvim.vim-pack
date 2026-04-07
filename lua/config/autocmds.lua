-- 文件功能: 提供一些基础的auto cmd
------------------------------文本高亮相关------------------------------
-- text is highlighted after being copied
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" }, -- match all models
	callback = function()
		vim.highlight.on_yank({
			timeout = 300, -- the highlight time (300ms)
		})
	end,
})
