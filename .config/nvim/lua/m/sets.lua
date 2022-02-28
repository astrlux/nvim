local o = vim.opt
o.mouse = 'a'
o.wrap = false
o.number = true
o.hidden = true
o.ruler = false
o.laststatus = 0
o.undofile = true
o.hlsearch = true
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.updatetime = 180
o.smartcase = true
o.showmatch = true
o.incsearch = true
o.ignorecase = true
o.signcolumn = 'no'
o.relativenumber = false
o.completeopt = 'menuone,noselect'
o.scrolloff = 7
-- vim.cmd [[
--   augroup JumpCursorLastPosition
--     autocmd!
--     autocmd BufRead * autocmd FileType <buffer> ++once
--           \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
--   augroup END
-- ]]
