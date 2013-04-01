"-------------------------------------------------
" vim 設定 .vimrc
"-------------------------------------------------

" Vi互換OFF 
set nocompatible
filetype off

" プラグイン管理 -- NeoBundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

" 非同期処理
NeoBundle 'Shougo/vimproc'

" Vim Color Solarized
NeoBundle 'altercation/vim-colors-solarized'

" Powerline
NeoBundle 'Lokaltog/vim-powerline'

" ファイル名と内容によってファイルタイプを判別し、
" ファイルタイププラグインを有効にする
filetype indent plugin on

" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! config/*.vim
