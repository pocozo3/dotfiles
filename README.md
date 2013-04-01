# dotfiles README

***
## 概要
主に*zsh*と*emacs*の設定ファイルを管理する

また、設定ファイルは*Windows*用と*Linux(Debian)*用の混合になっていて、条件分岐などで別ファイルや設定を読み込むようにしてある

***
## 内容
### zsh
*    *.zshenv* ファイルはシェルの起動時に実行される設定を記述する
*    *.zshrc* ファイルはシェルの対話的起動時にのみ実行される設定を記述する
*    *.zlogout* ファイルはシェルのログアウト時に実行される設定を記述する
*    *.zsh.d* 内には各OSの共通設定(*拡張子なし*)と環境別設定(*Linux=.linux/Windows=.win*)をいれる

### emacs
*    *.emacs.d/init.el* ファイルは起動時に読み込まれるファイル
*    *.emacs.d/conf* 内は各種設定ファイルで、init-loader-x.el によって順に読み込まれる
*    *.emacs.d/elisp* 内は公開 elisp ファイルをインストールする場所
     *    *.emacs.d/elisp/auto-install* 内は公開 elisp ファイルを auto-install.el でインストールする場所
*    *.emacs.d/elpa* 内は公開 elisp ファイルを package.el でインストールする場所
*    *.emacs.d/local-elisp* 内は独自作成またはカスタマイズ elisp ファイルをインストールする
*    *.emacs.d/backups* 内にはオートバックアップされたファイルが入ります

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
