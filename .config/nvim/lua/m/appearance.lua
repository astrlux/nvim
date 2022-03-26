local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true
o.bg = 'dark'
cmd 'colorscheme karonda'
-- vim.api.nvim_exec([[
-- hi LspFloatWinBorder guifg=white guibg=none
-- hi Normal guibg=none
-- hi EndOfBuffer guifg=#444444
-- ]], false)
