-- 文字コード自動判別
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = 'utf-8,sjis'

-- カラースキームを設定
vim.o.termguicolors = true

-- スワップファイルを作成しない
vim.opt.swapfile = false

-- レジスタとクリップボードを共有
vim.opt.clipboard:append({ 'unnamedplus' })

-- コマンドのタイムラグをなくす
vim.opt.ttimeoutlen = 1

-- 行番号を表示
vim.wo.number = true

-- カーソルラインを表示
vim.opt.cursorline = true

-- ステータスバーを一つだけ表示
vim.opt.laststatus = 3

-- 大文字小文字を無視して検索
vim.opt.ignorecase = true
-- 大文字を含む場合は大文字小文字を区別して検索
vim.opt.smartcase = true
-- ハイライト検索を有効
vim.opt.hlsearch = true
-- インクリメンタルサーチを有効
vim.opt.incsearch = true

-- シフト幅を4に設定する
vim.opt.shiftwidth = 4
-- タブ幅を4に設定する
vim.opt.tabstop = 4
-- タブ文字をスペースに置き換える
vim.opt.expandtab = true
-- 自動インデントを有効にする
vim.opt.autoindent = true
-- インデントをスマートに調整する
vim.opt.smartindent = true

-- スペースを可視化
vim.opt.list = true
vim.opt.listchars:append('space:·')

-- タブを可視化
vim.opt.listchars:append('tab:▸ ')

-- 全角スペースをハイライト
vim.cmd([[
  hi DoubleByteSpace term=underline ctermbg=blue guibg=darkgray
  match DoubleByteSpace /　/
]])

-- 深刻度の高い順にソート
vim.diagnostic.config({ severity_sort = true })
