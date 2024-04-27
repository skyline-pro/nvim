-- 用于多文档的插件
return{
    {
        "akinsho/bufferline.nvim",
        config = function()
            vim.g.termguicolors = true

            require("bufferline").setup({
		options = {
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
	    })
        end,
    }
}
