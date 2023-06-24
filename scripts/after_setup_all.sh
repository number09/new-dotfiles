#!/bin/bash


# スクリプトが配置されたディレクトリの親ディレクトリ内appsディレクトリを
# ルートディレクトリとする
app_directory=$(dirname "$(dirname "$(readlink -f "$0")")")

# ディレクトリ内のsetup.shファイルの一覧を取得
files=$(find "$app_directory" -type f -name "after-setup.sh")

# ファイルの数を取得
num_files=$(echo "$files" | wc -l)

# ループ処理
i=1
while [ $i -le $num_files ]
do
    # ファイルのパスを取得
    file=$(echo "$files" | sed -n "${i}p")

    echo "-------------------------"
    echo "Running script: $file"
    bash "$file"
    echo "Finished running script: $file"
    echo "-------------------------"

    # インデックスをインクリメント
    i=$((i + 1))
done

