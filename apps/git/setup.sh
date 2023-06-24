#!/bin/bash


# 実行中のスクリプトがあるディレクトリ名を取得(末尾/無し)
script_dir=$(dirname "$(readlink -f "$0")")


# dotfiles link
ln -sfnv "${script_dir}/gitconfig" ~/.gitconfig
ln -sfnv "${script_dir}/gitignore_global" ~/.gitignore_global

