return {
    'RRethy/vim-illuminate',
    config = function()
        vim.g.Illuminate_delay = 0
        vim.g.Illuminate_highlightUnderCursor = 0

        vim.cmd([[
        hi IlluminatedWordText guibg=#3c3836 gui=none
        hi IlluminatedWordRead guibg=#3c3836 gui=none
        hi IlluminatedWordWrite guibg=#3c3836 gui=none
        ]])
    end,
}
