return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
    },

    require('noice').setup({
        messages = {
            enabled = true,
        },
        cmdline = {
            enabled = true,
            format = {
                cmdline = { pattern = '^:', icon = '>', lang = 'vim' },
                search_down = { kind = 'search', pattern = '^/', icon = '🔍⌄', lang = 'regex' },
                search_up = { kind = 'search', pattern = '^%?', icon = '🔍⌃', lang = 'regex' },
            },
        },
        popupmenu = {
            enabled = true,
        },
        history = {
            enabled = true,
        },
        notify = {
            enabled = true,
        },
    }),
}
