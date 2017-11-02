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

function get_fzf_url() {
    echo $(latest_download_url 'junegunn' 'fzf-bin' 'fzf' 'linux_amd64.tgz')
}

function get_ripgrep_url() {
    echo $(latest_download_url 'BurntSushi' 'ripgrep' 'ripgrep' \
           'x86_64-unknown-linux-musl.tar.gz')
}

function download_prog() {
    pushd "$dl_path"
    local prog=$1
    local url=$2

    if [[ ! `which $prog` ]]; then
        curl -sLO $url
        local file=$(basename $url)
        tar -zxf $file $bin_path
    fi
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
    download_prog 'fzf' $(get_fzf_url)
    download_prog 'rg' $(get_ripgrep_url)
fi

git submodule init
git submodule update --depth 1

repo=${PWD##$HOME/}

for f in .vim .vimrc .gvimrc .bash_profile .gitignore_global
do
    dest=~/$f
    src=$repo/${f#.}
    [ ! -e $dest ] && ln -s $src $dest 2>/dev/null
done

setup_gitconfig
