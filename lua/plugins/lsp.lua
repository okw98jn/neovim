return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'lukas-reineke/lsp-format.nvim',
    },

    config = function()
        local signs = { Error = ' ', Warn = ' ', Hint = '💡', Info = ' ' }
        for type, icon in pairs(signs) do
            local hl = 'DiagnosticSign' .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl })
        end

        require('mason').setup()
        require('mason-lspconfig').setup_handlers({
            function(server)
                local opt = {
                    capabilities = require('cmp_nvim_lsp').default_capabilities(
                        vim.lsp.protocol.make_client_capabilities()
                    ),
                }
                require('lspconfig')[server].setup(opt)
                require('lspconfig')[server].setup({ on_attach = require('lsp-format').on_attach })
            end,
        })
    end,
}
