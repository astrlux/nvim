local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark'
cmd 'colorscheme monochrome'
vim.api.nvim_exec([[
  hi Normal guibg=none
  hi EndOfBuffer guifg=#121212
  hi LspFloatWinBorder guifg=white guibg=none
]], false)
-- cmd [[
-- hi Normal guibg=none
-- hi EndOfBuffer guifg=#121212
-- hi LspFloatWinBorder guifg=white guibg=none
-- ]]
