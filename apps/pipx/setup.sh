#!/bin/bash

# 実行中のスクリプトがあるディレクトリ名を取得(末尾/無し)
script_dir=$(dirname "$(readlink -f "$0")")

# install pipx
pipx ensurepath

