local o = vim.opt
o.mouse = 'a'
o.guicursor = ''
o.tabstop = 2
o.wrap = false
o.number = false
o.hidden = true
o.ruler = false
o.cmdheight = 1
o.laststatus = 0
o.shiftwidth = 2
o.updatetime = 720
o.undofile = true
o.showcmd = false
o.smarttab = true
o.softtabstop = 2
o.hlsearch = true
o.incsearch = true
o.smartcase = true
o.showmode = true
o.expandtab = true
o.autoindent = true
o.showmatch = false
o.ignorecase = true
o.cursorline = true
o.smartindent = true
o.signcolumn = 'no'
o.relativenumber = false
o.scrolloff = 9
o.completeopt = 'menuone,noselect'
-- vim.cmd [[
--   augroup JumpCursorLastPosition
--     autocmd!
--     autocmd BufRead * autocmd FileType <buffer> ++once
--           \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
--   augroup END
-- ]]
