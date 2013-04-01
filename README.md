# dotfiles README

***
## 概要
主に *zsh* と *vim* の設定ファイルを管理する

また、設定ファイルは *Windows* 用と *Linux(Debian)* 用の混合で、条件分岐などで別ファイルや設定を読み込む

***
## 内容
### zsh
*    *.zshenv* シェルの起動時に実行される設定を記述
*    *.zshrc* シェルの対話的起動時にのみ実行される設定を記述
*    *.zlogout* シェルのログアウト時に実行される設定を記述
*    *.zsh.d/* 各OSの共通設定( *拡張子なし* )と環境別設定( *Linux=.linux/Windows=.win* )

### vim
*    *.vimrc* 起動時に読み込まれるファイル
*    *.vim/* 各種設定ファイルが順に読み込みされる
*    *.vim/bundle/* NeoBundle でインストールされるプラグインファイル

### その他
*    *.fbtermrc* fbterm の設定
*    *.fonts.conf* tty上のフォント表示設定
*    *.tmux.conf* tmux の設定
*    *README.md* このファイル
*    *setup.sh* 一括でシンボリックリンクをつくるスクリプト

***
## *setup.sh* の使い方
###**setup.sh** srcdir distdir

* **srcdir**  ： projects のあるディレクトリを指定
* **distdir** ： シンボリックリンクをつくりたいディレクトリを指定
