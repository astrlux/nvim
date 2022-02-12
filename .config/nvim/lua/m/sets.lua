local o = vim.opt
o.mouse = 'a'
o.wrap = false
o.number = true
o.hidden = true
o.ruler = false
o.cursorline = true
o.laststatus = 0
o.undofile = true
o.hlsearch = false
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.updatetime = 180
o.smartcase = true
o.showmatch = true
o.incsearch = true
o.ignorecase = true
o.signcolumn = 'yes'
o.relativenumber = true
o.completeopt = 'menuone,noselect'
o.scrolloff = 9
-- vim.cmd [[
--   augroup JumpCursorLastPosition
--     autocmd!
--     autocmd BufRead * autocmd FileType <buffer> ++once
--           \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
--   augroup END
-- ]]
