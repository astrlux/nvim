local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark'
cmd 'colorscheme monochrome'
cmd [[
  hi Normal guibg=none
  hi EndOfBuffer guifg=#121212
  hi MatchParen guifg=black guibg=orange
  hi LspFloatWinBorder guifg=white guibg=none
]]
