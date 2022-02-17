local g, o = vim.g, vim.opt
o.list = true
o.listchars:append('eol:↴')
-- o.listchars:append('space:⋅')
o.listchars:append('tab:→ ')
-- g.indent_blankline_char = '│'
g.indent_blankline_char = '╎'
g.indent_blankline_show_current_context = true
g.indent_blankline_show_first_indent_level = true;
g.indent_blankline_filetype_exclude = {
    'help', 'NvimTree', 'packer', 'markdown', 'terminal', 'LspSaga'
}
