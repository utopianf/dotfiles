set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/syntasitc'

call neobundle#end()
filetype plugin indent on
