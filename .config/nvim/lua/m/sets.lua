local o = vim.opt
o.wrap = false
o.ruler = false
o.mouse = 'a'
o.number = true
o.hidden = true
o.tabstop = 4
o.guicursor = ''
o.showcmd = false
o.undofile = true
o.hlsearch = true
o.showmode = false
o.showmatch = true
o.smarttab = true
o.incsearch = true
o.smartcase = true
o.cmdheight = 1
o.expandtab = true
o.autoindent = true
o.laststatus = 3
o.signcolumn = 'yes'
o.shiftwidth = 4
o.ignorecase = true
o.cursorline = true
o.updatetime = 720
o.smartindent = true
o.softtabstop = 4
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
