-- LaTeX live preview
vim.api.nvim_exec([[ 
  augroup LaTeXCompiler
    autocmd FileType tex nnoremap <buffer> T :silent !xelatex % && open -a Preview && open -a kitty<CR>
    autocmd FileType tex nnoremap <buffer> <C-T> :silent !open -a Preview %:r.pdf && open -a kitty<CR><CR>
  augroup END
]], false)

-- Markdown to PDF preview
vim.api.nvim_exec([[ 
  augroup MarkdownToPDF
    autocmd FileType markdown nnoremap <buffer> T :silent !pandoc % -o compiled.pdf && open -a Preview && open -a kitty<CR>
  augroup END
]], false)
