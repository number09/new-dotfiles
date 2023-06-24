# ---------
# 未使用
# ---------
# script_file=$(basename $(readlink -f "$0"))
# echo $script_file
#
# function include_files_recursive_with_prefix() {
#   local dir="$1"
#   local prefix="$2"
#   for file in $dir/*; do
#     if [[ -f $file && $(basename $file) == "$script_file" ]]; then
#       echo "continue"
#       echo $file
#       echo $script_file
#       continue
#     elif [[ -d $file ]]; then
#       include_files_recursive_with_prefix "$file" "$prefix"  # サブディレクトリの場合、再帰的に検索
#     elif [[ -f $file && $(basename $file) == "$prefix"* ]]; then
#       echo "source $file"
#       source $file
#     fi
#   done
# }
#
#
#
# app_directory=$(dirname "$(dirname "$(readlink -f "$0")")")
# # echo $app_directory
#
# # ディレクトリ内の特定のプレフィックスを持つファイルを再帰的にインクルード
# include_files_recursive_with_prefix "$app_directory" "zshrc_"
