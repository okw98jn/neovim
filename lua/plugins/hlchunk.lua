return {
    'shellRaining/hlchunk.nvim',
    event = { 'BufReadPre', 'BufNewFile' },

    config = function()
        require('hlchunk').setup({
            chunk = {
                enable = true,
                chars = {
                    horizontal_line = '─',
                    vertical_line = '│',
                    left_top = '╭',
                    left_bottom = '╰',
                    right_arrow = '>',
                },
                style = '#806d9c',
                duration = 100,
                delay = 50,
            },
            indent = {
                enable = true,
            },
            line_num = {
                enable = true,
            },
            context = {
                enable = false,
            },
        })
    end,
}
