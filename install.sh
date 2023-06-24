#!/bin/bash


if [ $(uname) == "Darwin" ]; then
    echo "Mac OS"
else
    echo "Unknown OS"
    exit 1
fi


PROJECT_DIR="$HOME/Project/number09"
DOT_DIR="${PROJECT_DIR}/dotfiles"

mkdir -p "${PROJECT_DIR}"

cd ${PROJECT_DIR}

has() {
    type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
    if has "git"; then
        git clone git@github.com:number09/new-dotfiles.git ${DOT_DIR}
    else
        echo "git required"
        exit 1
    fi

    # TARBALL="https://github.com/number09/new-dotfiles/archive/main.tar.gz"
    #   curl -L ${TARBALL} -o main.tar.gz
    # tar -zxvf main.tar.gz
    # rm -f main.tar.gz
    # mv -f new-dotfiles-main "${DOT_DIR}"

    cd ${DOT_DIR} && make init && make mac_setup && make install-common
else
    echo "dotfiles already exists"
    exit 1
fi
