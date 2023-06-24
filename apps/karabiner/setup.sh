#!/bin/bash

# 実行中のスクリプトがあるディレクトリ名を取得(末尾/無し)
script_dir=$(dirname "$(readlink -f "$0")")

# karabiner setting link
## ディレクトリがなければ作成
mkdir ~/.config > NUL 2>&1
ln -sfnv "${script_dir}" ~/.config/karabiner
