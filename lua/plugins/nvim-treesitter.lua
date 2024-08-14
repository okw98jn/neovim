return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'yioneko/nvim-yati',
    },
    build = ':TSUpdate',

    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = 'all',
            disable = { 'json' },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            yati = {
                enable = true,
                disable = { 'json' },
                default_lazy = true,
                default_fallback = 'auto',
            },
            indent = {
                enable = true,
            },
        })
    end,
}
