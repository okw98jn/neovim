local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 's'キーを無効化
map('n', 's', '<NOP>', opts)

-- 'J'キーで5行下に移動
map('n', 'J', '5j', opts)

-- 'K'キーで5行下に移動
map('n', 'K', '5k', opts)

-- NvimTree
map('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', opts)
map('n', '<C-b>', '<cmd>NvimTreeFocus<CR>', opts)

-- Telescope
map('n', '<C-p>', '<cmd>Telescope find_files<CR>', opts)
map('n', '<C-o>', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<C-u>', '<cmd>Telescope buffers<CR>', opts)

-- bufferline
map('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)
map('n', '<A-<>', ':BufferLineMovePrev<CR>', opts)
map('n', '<A->>', ':BufferLineMoveNext<CR>', opts)
map('n', '<A-p>', ':BufferLineTogglePin<CR>', opts)
map('n', '<A-c>', [[<CMD>lua require('close_buffers').delete({type = 'this'})<CR>]], opts)
map('n', '<A-x>', ':BufferLineCloseOthers<CR>', opts)
map('n', '<A-r>', ':BufferLineRestore<CR>', opts)

-- Lspsaga
map('n', 'G', '<cmd>Lspsaga hover_doc<CR>', opts)
map('n', 'ga', '<cmd>Lspsaga code_action<CR>', opts)
map('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)
-- map('n', 'gf', '<cmd>Lspsaga finder<CR>', opts)
-- map('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
map('n', 'gj', '<cmd>Lspsaga term_toggle<CR>', opts)

-- Trouble
map('n', 'gl', '<cmd>Trouble lsp toggle focus=true<CR>', opts)
map('n', 'ge', '<cmd>Trouble diagnostics toggle focus=true<CR>', opts)
map('n', 'gs', '<cmd>Trouble symbols toggle focus=true<CR>', opts)

-- Lsp
vim.keymap.set('n', '<space>f', function()
    vim.lsp.buf.format({ async = true })
end, opts)

-- Neogit
map('n', '<C-q>', '<cmd>Neogit<CR>', opts)

-- hop
map('n', '<A-n>', '<cmd>HopLine<CR>', opts)
map('n', '<A-m>', '<cmd>HopWord<CR>', opts)
