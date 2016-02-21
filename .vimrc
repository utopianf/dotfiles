set smarttab
set virtualedit=block
set ignorecase
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set smartcase
set incsearch
set nohlsearch
set wrapscan

set list
set number

set nocompatible
syntax enable
set t_Co=256

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'

NeoBundleCheck
call neobundle#end()
filetype plugin indent on

autocmd FileType python setlocal omnifunc=jedi#completions

let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
