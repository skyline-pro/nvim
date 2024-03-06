-- 文件目录插件，用于显示文件目录

return{
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.g.termguicolors = true

            require("nvim-tree").setup({
                sort_by = "case_sensitive",
            })
        end,
    }
}
