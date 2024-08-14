return {
    'folke/trouble.nvim',
    config = function ()
        require('trouble').setup({
            position = 'right',
            width = 50,
        })
    end
}
