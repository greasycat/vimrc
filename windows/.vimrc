" Search and Matching
set showmatch               " show matching
set ignorecase              " case insensitive
set hlsearch                " highlight search
set incsearch               " incremental search

" Tabbing
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

" Line Number
set number

" Mouse
set mouse=a
" System Interaction
set cursorline

" Backups
set backupdir=~/.cache/vim

" Syntax
filetype plugin on
syntax on
set clipboard=unnamedplus

if has('nvim') " For nvim only
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>

    source ~/.nvim/plugs.vim

    "Style/theme
    colorscheme codedark
    let g:airline_theme = 'codedark'

    augroup my-glyph-palette
        autocmd! *
        autocmd FileType fern call glyph_palette#apply()
    augroup END

    let g:fern#renderer = "nerdfont"

    "Style/neovide
    let g:neovide_cursor_vfx_mode = "wireframe"
    let g:neovide_transparency=0.95
    let g:neovide_remember_window_size = v:true
    let g:neovide_refresh_rate=144
    let g:neovide_no_idle=v:false
    set guifont =JetBrainsMono\ Nerd\ Font\ Mono:h14

    "Resolve COC and UltiSnip Conflict
    let g:UltiSnipsExpandTrigger = "<nop>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()

    "Use tab to move around
    "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    nnoremap <leader>f :Fern . -stay -keep -drawer -toggle<CR>

endif

set encoding=UTF-8
" Keybinding
nnoremap ZA :wqa<CR>

" Move window
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" Resize
nnoremap <A-=> <C-W>>
nnoremap <A--> <C-W><
nnoremap <A-0> <C-W>-
nnoremap <A-9> <C-W>+


