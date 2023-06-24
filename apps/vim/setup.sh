#!/bin/bash

# 実行中のスクリプトがあるディレクトリ名を取得(末尾/無し)
script_dir=$(dirname "$(readlink -f "$0")")

# install dein.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"

# dotfiles link
ln -sfnv "${script_dir}/vimrc" ~/.vimrc
ln -sfnv "${script_dir}/gvimrc" ~/.gvimrc

