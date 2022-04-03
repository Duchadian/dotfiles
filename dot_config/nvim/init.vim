call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" jetbrains integration
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'beeender/Comrade'

" bigram search
Plug 'justinmk/vim-sneak'

let mapleader = "," " map leader to comma

" Initialize plugin system
call plug#end()
