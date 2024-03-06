-- 1. 进行lazy.nvim模块的存在性检查，如果不存在，则下载
-- stdpath("data")
-- macOS/Linux:~/.local/share/nvim
-- Windows: ~/AppData/Local/nvim-data
local lazypath = vim.fn.stdpath("data").."/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
