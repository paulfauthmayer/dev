if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" UX & Controls Plugins
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-tmux-navigator'

" Language Plugins
Plug 'sheerun/vim-polyglot'
Plug 'davidhalter/jedi-vim'

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
let g:gruvbox_italicize_comments=1
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

" Git Config
autocmd BufWritePost * GitGutter

" Python
let g:jedi#show_call_signatures = "2"
let g:jedi#use_splits_not_buffers = "bottom"
let g:jedi#popup_on_dot = 0
autocmd FileType python setlocal completeopt-=preview
set splitbelow
