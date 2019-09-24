if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

" UX Plugins
Plug 'tpope/vim-sensible'

" Language Plugins
Plug 'sheerun/vim-polyglot'

" Style Plugins
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'

" Version Control Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

" SETTINGS

" STYLE
let g:gruvbox_italic=0
colorscheme gruvbox
set background=dark
let g:rainbow_activate=1

" Lightline
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

" Interface
set number
