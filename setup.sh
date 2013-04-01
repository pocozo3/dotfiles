#!/bin/bash

DOT_FILES=( .zsh.d .zlogout .zshenv .zshrc .emacs.d .fbtermrc .fonts.conf .tmux.conf .tmux.d)

CMDNAME=`basename $0`
if [ $# -ne 2 ]; then
  echo "Usage: $CMDNAME srcdir distdir" 1>&2
  exit 1
fi

if [ ! -d $1 ]; then
  echo "Directory not exist $1"
  exit 1
fi

if [ ! -d $2 ]; then
  echo "Directory not exist $2"
  exit 1
fi

for file in ${DOT_FILES[@]}
do
  if [ -a $2/$file ]; then
    #ln -s $1/projects/dotfiles/$file $2/$file.dot
    #echo "ファイルが存在しますから.dotファイルつくるよ: $file"
    echo "既にファイルが存在します: $file"
  else
    ln -s $1/projects/dotfiles/$file $2/$file
    echo "シンボリックリンクを貼りました: $file"
  fi
done
