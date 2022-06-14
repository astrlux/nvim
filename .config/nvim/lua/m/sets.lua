local o = vim.opt
o.ruler = false
o.mouse = 'a'
o.number = true
o.wrap = false
o.hidden = true
o.tabstop = 4
o.guicursor = ''
o.showcmd = false
o.undofile = true
o.hlsearch = false
o.showmode = true
o.showmatch = false
o.smarttab = true
o.incsearch = true
o.smartcase = true
o.cmdheight = 1
o.expandtab = true
o.autoindent = true
o.laststatus = 0
o.signcolumn = 'no'
o.shiftwidth = 4
o.ignorecase = true
o.cursorline = true
o.updatetime = 720
o.smartindent = true
o.softtabstop = 4
o.relativenumber = true
o.completeopt = 'menuone,noselect'
-- o.scrolloff = 5
-- vim.cmd [[
--   augroup JumpCursorLastPosition
--     autocmd!
--     autocmd BufRead * autocmd FileType <buffer> ++once
--           \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
--   augroup END
-- ]]
