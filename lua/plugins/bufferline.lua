return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
        require('bufferline').setup({
            options = {
                diagnostics = 'nvim_lsp',
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = ' '
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == 'error' and ' ' or (e == 'warning' and ' ' or ' ')
                        s = s .. n .. sym
                    end
                    return s
                end,
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'File Explorer',
                        highlight = 'Directory',
                        text_align = 'left',
                    },
                },
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
            },
        })
    end,
}
