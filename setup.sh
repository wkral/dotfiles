#!/usr/bin/env bash

# If we're not in the actual repo directory none of this will work
[ ! -s setup.sh ] && exit 1

dl_path=~/downloads
if [[ ! -d "$dl_path" ]]; then
    mkdir -p $dl_path
fi

function latest_download_url() {
    local author=$1
    local project=$2
    local ext=$3
    local base_url="https://github.com/${author}/${project}/releases"

    local version=$(curl -sI ${base_url}/latest | \
                    sed -n -e 's/Location.*\/\([0-9.]*\).*/\1/p')

    echo "${base_url}/downloads/${version}/${project}-${version}-${ext}"
}

function get_fzf_url() {
    echo $(latest_download_url 'junegunn' 'fzf-bin' 'linux_amd64.tgz')
}

function get_ripgrep_url() {
    echo $(latest_download_url 'BurntSushi' 'ripgrep' \
           'x86_64-unknown-linux-musl.tar.gz')
}

function download_prog() {
    local prog=$1
    local url=$2

    if [[ ! `which $prog` ]]; then
        cd "$dl_path"
        curl -sO $url
        local file=$(ls -1 $dl_path/$prog*)
        echo $file
    fi
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
    download_prog $(get_fzf_url)
    download_prog $(get_ripgrep_url)
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
