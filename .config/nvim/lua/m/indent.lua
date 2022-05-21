local g, o = vim.g, vim.opt
o.list = true
o.listchars:append('tab:→ ')
g.indent_blankline_char = '┊'
g.indent_blankline_filetype_exclude = {
    'help', 'NvimTree', 'packer', 'markdown', 'terminal', 'LspSaga'
}
