#!/bin/bash

# 実行中のスクリプトがあるディレクトリ名を取得(末尾/無し)
script_dir=$(dirname "$(readlink -f "$0")")

# dotfiles link
ln -sfnv "${script_dir}/zshrc" ~/.zshrc
ln -sfnv "${script_dir}/zprofile" ~/.zprofile

