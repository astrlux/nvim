local g, o = vim.g, vim.opt
g.indent_blankline_char = '│'
-- g.indent_blankline_char = '╎'
g.indent_blankline_show_current_context = false
g.indent_blankline_show_first_indent_level = false
g.indent_blankline_filetype_exclude = {
  'help', 'NvimTree', 'packer', 'markdown', 'terminal', 'LspSaga'
}
