return {
    'nvimdev/lspsaga.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        require('lspsaga').setup({
            lightbulb = {
                sign = false, -- サインカラム（行番号の横）のアイコンを非表示にする
            },
        })
    end,
}
