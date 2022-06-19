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
set ttyfast

" Backups
set backupdir=~/.cache/vim

" Syntax
filetype plugin on
syntax on


if has('nvim') " For nvim only
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>

    call plug#begin('~/.nvim/plugged')
        " Editing
        Plug 'tpope/vim-surround'
        Plug 'mattn/emmet-vim'

        "Style
        Plug 'tomasiser/vim-code-dark'

        "Interface
        Plug 'vim-airline/vim-airline' "Airline
        Plug 'mhinz/vim-startify' "Start screen
        Plug 'ryanoasis/vim-devicons' "Icons

        " NERDTrees
        Plug 'preservim/nerdtree'
        Plug 'preservim/nerdcommenter'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'PhilRunninger/nerdtree-buffer-ops'
        Plug 'PhilRunninger/nerdtree-visual-selection'

        "Snippets
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'

        "Autocompletion
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    call plug#end()

    "Style/theme
    colorscheme codedark
    let g:airline_theme = 'codedark'
    set guifont=Consolas\ 15

    "Style/neovide
    let g:neovide_cursor_vfx_mode = "wireframe"
    let g:neovide_transparency=0.95
    let g:neovide_remember_window_size = v:true

    "Style/window size
    let g:NERDTreeWinSize=25

    "Keybinding/nerdtree
    nnoremap <leader>f :NERDTreeToggle<CR>
    
    "Start with NERDTree opened
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif


else
    " Standard vim specific commands
    call plug#begin('~/.vim/plugged')
        Plug 'tpope/vim-surround'
    call plug#end()
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
nnoremap <A-=> <C-W><
nnoremap <A--> <C-W>>
nnoremap <A-0> <C-W>-
nnoremap <A-9> <C-W>+


