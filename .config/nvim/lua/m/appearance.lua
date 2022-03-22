local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = false
o.bg = 'dark'
cmd 'colorscheme default'
vim.api.nvim_exec([[
hi Normal guibg=none
hi LspFloatWinBorder guifg=white guibg=none
hi EndOfBuffer guifg=#444444
]], false)
