return {
    'jay-babu/mason-null-ls.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'williamboman/mason.nvim',
        'nvimtools/none-ls.nvim',
        'nvim-lua/plenary.nvim',
        'davidmh/cspell.nvim',
    },

    config = function()
        local null_ls = require('null-ls')
        local cspell = require('cspell')
        local sources = {
            cspell.diagnostics.with({
                diagnostics_postprocess = function(diagnostic)
                    diagnostic.severity = vim.diagnostic.severity['INFO']
                end,
            }),
            -- cspell.code_actions,
        }
        null_ls.setup({
            sources = sources,
        })
        require('mason').setup()
        require('mason-null-ls').setup({
            handlers = {},
        })
    end,
}
