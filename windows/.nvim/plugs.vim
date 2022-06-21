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

    " NERDTrees (no more) only commmenter
    Plug 'preservim/nerdcommenter'

    " Fern File Explorer
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'

    "Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    "Autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
    Plug 'OmniSharp/omnisharp-vim' "C#
call plug#end()
