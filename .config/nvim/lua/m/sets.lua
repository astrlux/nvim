local o = vim.opt
o.wrap = false
o.ruler = true
o.mouse = 'a'
o.number = true
o.hidden = true
o.tabstop = 2
o.showcmd = true
o.undofile = true
o.hlsearch = true
o.showmode = false
o.showmatch = false
o.smarttab = true
o.incsearch = true
o.smartcase = true
o.cmdheight = 1
o.expandtab = true
o.autoindent = true
o.laststatus = 3
o.signcolumn = 'no'
o.shiftwidth = 2
o.ignorecase = true
o.cursorline = true
o.updatetime = 720
o.smartindent = true
o.softtabstop = 2
o.relativenumber = true
o.scrolloff = 8
o.completeopt = 'menuone,noselect'
-- vim.cmd [[
--   augroup JumpCursorLastPosition
--     autocmd!
--     autocmd BufRead * autocmd FileType <buffer> ++once
--           \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
--   augroup END
-- ]]
