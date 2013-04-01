"-------------------------------------------------
" Basic 基本設定
"-------------------------------------------------

" バッファを保存しなくても他のバッファを表示できるようにする
set hidden

" コマンドライン補完を便利に
set wildmenu

" タイプ途中のコマンドを画面最下行に表示
set showcmd

" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch

" カーソルの上または下に表示する最小限の行数
set scrolloff=5
 
" 入力されているテキストの最大幅 「0」で無効
set textwidth=0
 
" バックアップの作成は行わない
set nobackup
 
" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread
 
" スワップファイルの作成は行わない
set noswapfile
 
" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start

" 自動整形の実行方法
set formatoptions=lmoq
 
" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" そしてビジュアルベルも無効化する
set t_vb=

" ファイルブラウザの初期ディレクトリ
set browsedir=buffer
 
" 特定のキーに行頭および行末の回りこみ移動を許可する設定
"  b - [Backspace]  ノーマルモード ビジュアルモード
"  s - [Space]      ノーマルモード ビジュアルモード
"  <  - [←]        ノーマルモード ビジュアルモード
"  >  - [→]         ノーマルモード ビジュアルモード
"  [ - [←]         挿入モード 置換モード
"  ] - [→]          挿入モード 置換モード
"  ~ - ~            ノーマルモード
set whichwrap=b,s,<,>,[,],~
 
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
 
" ステータス行を常に表示する
set laststatus=2
 
" コマンドラインに使われる画面上の行数
set cmdheight=2
 
" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode
 
" モードラインの無効化
set nomodeline

" すべてのモードでマウスが有効
set mouse=a

" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 画面最下行にルーラーを表示する
set ruler

" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm

" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

" helpを日本語優先に
set helplang=ja

" 不可視文字の表示
set list
set listchars=tab:▸\ ,eol:↵
