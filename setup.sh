#!/usr/bin/env bash

# If we're not in the actual repo directory none of this will work
[ ! -s setup.sh ] && exit 1

dl_path=~/downloads
bin_path=~/bin

mkdir -p $dl_path
mkdir -p $bin_path

function latest_download_url() {
    local author=$1
    local project=$2
    local prefix=$3
    local suffix=$4
    local base_url="https://github.com/${author}/${project}/releases"

    local version=$(curl -sI ${base_url}/latest | \
                    sed -n -e 's/Location.*\/\([0-9.]*\).*/\1/p')

    echo "${base_url}/download/${version}/${prefix}-${version}-${suffix}"
}


function download() {
    local url=$1

    pushd $dl_path
    curl -sLO $url
    popd
}

function download_fzf() {
    if [[ `which fzf` ]]; then
        return
    fi

    local url=$(latest_download_url 'junegunn' 'fzf-bin' 'fzf' \
                'linux_amd64.tgz')

    download $url
    pushd $bin_path
    local file=$(basename $url)
    tar -zxf "${dl_path}/${file}" fzf
    popd
}

function download_ripgrep() {
    if [[ `which rg` ]]; then
        return
    fi

    local url=$(latest_download_url 'BurntSushi' 'ripgrep' 'ripgrep' \
                'x86_64-unknown-linux-musl.tar.gz')

    download $url
    pushd $bin_path
    local file=$(basename $url)
    tar -zxf "${dl_path}/${file}" --strip-components 1 --no-anchored 'rg'
    popd
}

function setup_gitconfig() {
cat <<EOT > $HOME/.gitconfig
[user]
	name = William Kral
	email = william.kral@gmail.com
[color]
	ui = auto
[core]
	editor = vim
	excludesfile = $HOME/.gitignore_global
	ignorecase = false
[push]
	default = simple
[diff]
	tool = vimdiff
EOT
}


if [[ "$OSTYPE" =~ ^linux ]]; then
    download_fzf
    download_ripgrep
fi

git submodule init
git submodule update --depth 1

repo=${PWD##$HOME/}

for f in .vim .vimrc .gvimrc .bash_profile .gitignore_global .tmux.conf .inputrc
do
    dest=~/$f
    src=$repo/${f#.}
    [ ! -e $dest ] && ln -s $src $dest 2>/dev/null
done

setup_gitconfig
