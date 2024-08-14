return {
    'mvllow/modes.nvim',
    tag = 'v0.2.0',
    config = function()
        require('modes').setup({
            colors = {
                bg = '#282c34',
                copy = "#00bfff",
                delete = "#ff5c57",
                insert = "#78ccc5",
                visual = "#f5c359",
            },
            line_opacity = 0.3,
        })
    end,
}
