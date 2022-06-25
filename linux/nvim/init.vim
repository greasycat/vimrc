" Set paths
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set termguicolors

" Load General Vimrc
source ~/.vimrc
" Load Plugs
execute "source" stdpath("config")."/plugs.vim"

" Startify
execute "source" stdpath("config")."/startify.vim"

"Fern
"execute "source" stdpath("config")."/fern.vim"
execute "source" stdpath("config")."/mappings.vim"

let g:coq_settings = { 'auto_start': v:true }

" Load Lua Configuations
lua require'config'

if exists('g:GuiLoaded')
    execute "source" stdpath("config")."/ginit.vim"
endif
"
" Style/theme
colorscheme vscode
