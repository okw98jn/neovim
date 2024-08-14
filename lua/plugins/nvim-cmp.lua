return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'f3fora/cmp-spell',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-nvim-lua',
        'onsails/lspkind.nvim',
        'yutkat/cmp-mocword',
        'zbirenbaum/copilot-cmp',
        'hrsh7th/cmp-nvim-lsp',
    },

    config = function()
        local cmp = require('cmp')
        local lspkind = require('lspkind')
        require('copilot_cmp').setup()

        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({
                    mode = 'symbol',
                    maxwidth = 50,
                    ellipsis_char = '...',
                    symbol_map = { Copilot = '' },
                }),
            },
            snippet = {
                expand = function(args)
                    vim.fn['vsnip#anonymous'](args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<C-space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = 'copilot', group_index = 2 },
                { name = 'nvim_lsp' },
                { name = 'vsnip' },
                { name = 'mocword' },
                { name = 'spell' },
                { name = 'nvim_lua' },
            }, {
                { name = 'buffer' },
            }),
        })

        cmp.setup.cmdline({ '/', '?' }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' },
            },
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' },
            }, {
                { name = 'cmdline' },
            }),
        })
    end,
}
