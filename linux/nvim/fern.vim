augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
augroup END


let g:fern#renderer = "nerdfont"

" Omnisharp configuration
"execute "source" stdpath("config")."/omnisharp.vim"
" Fern Mapping
nnoremap <leader>f :Fern . -keep -drawer -toggle<CR>

