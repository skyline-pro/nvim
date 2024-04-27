return{
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300

            local wk = require("which-key")
            -- 在此定义快捷键
            wk.setup()
                wk.register({
                [","] = {"<cmd>nohlsearch<cr>", "取消搜索高亮"},
                ["d"] = {"<cmd>NvimTreeToggle<cr>", "显示/隐藏目录"},
            	["bp"] = {"<cmd>BufferLineCyclePrev<cr>", {silent = true}, "切换到前一个buffer"},
                ["bn"] = {"<cmd>BufferLineCycleNext<cr>", {silent = true}, "切换到后一个buffer"},
        		["bd"] = {"<cmd>bd<cr>", {silent = true}, "关闭当前标签"},
        		["p"]  = {"\"+p", "粘贴"},
        		["y"]  = {"\"+y", "复制"},
            }, {prefix = "<leader>"})
        end
    }
}
