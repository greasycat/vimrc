call plug#begin('~/.nvim/plugged')
    " Editing
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'numToStr/Comment.nvim'

    "Style
    Plug 'tomasiser/vim-code-dark'
    Plug 'Mofiqul/vscode.nvim'

    "Interface
    Plug 'feline-nvim/feline.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'mhinz/vim-startify' "Start screen
    Plug 'ryanoasis/vim-devicons' "Icons
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Fern File Explorer
    "Plug 'lambdalisue/fern.vim'
    "Plug 'lambdalisue/nerdfont.vim'
    "Plug 'lambdalisue/glyph-palette.vim'
    "Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    " File Explorer
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

    "Snippets
    "Plug 'SirVer/ultisnips'
    "Plug 'honza/vim-snippets'
    
    "LSP
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'neovim/nvim-lspconfig'
    Plug 'folke/lsp-colors.nvim'
    Plug 'RRethy/vim-illuminate'
    Plug 'stevearc/qf_helper.nvim'
    Plug 'folke/trouble.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}



    "Autocompletion
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    "Plug 'OmniSharp/omnisharp-vim'

    "Search
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    "Formatting
    Plug 'mhartington/formatter.nvim'

    "Terminal
    Plug 'kassio/neoterm'
call plug#end()
