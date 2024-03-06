-- 用于显示界面下方文件状态栏
return {
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require('lualine').setup()
		end
	}
}
