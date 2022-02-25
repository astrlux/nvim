local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark'
g.vscode_style = 'dark'
cmd 'colorscheme monochrome'
cmd [[
  hi LspFloatWinBorder guifg=white guibg=none
  hi TelescopeMatching guifg=#39FF14
]]
