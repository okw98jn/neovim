return {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.o.termguicolors = true

        require('nvim-tree').setup({
            diagnostics = {
                enable = true,
                icons = {
                    hint = '',
                    info = '',
                    warning = '',
                    error = '',
                },
            },
            view = {
                width = 40,
            },
            git = {
                enable = true,
                ignore = false,
            },
            filters = {
                dotfiles = false,
            },
        })
    end,
}
