require("key-map")
require("lazynvim-init")

-- 设置缩进，修改为4个字符并且tab键自动补空格
vim.g.shiftround = true
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

-- 显示行号
vim.wo.number = true

-- 右边界设置为120，超过120字符自动换行
-- vim.wo.colorcolumn = "120"

vim.o.listchars = "lead:‧"
vim.wo.list = true
