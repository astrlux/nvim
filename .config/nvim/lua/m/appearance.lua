local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark'
cmd 'colorscheme monochrome'
cmd [[
  hi Normal guibg=none
  hi EndOfBuffer guifg=#121212
  hi MatchParen guibg=#0D877C
  hi LspFloatWinBorder guifg=white guibg=none
]]
