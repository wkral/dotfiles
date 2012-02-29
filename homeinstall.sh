#!/bin/bash

# If we're not in the actual repo directory none of this will work
[ ! -s homeinstall.sh ] && exit 1

git submodule init
git submodule update

REPO=${PWD##$HOME/}

FILES=".vim
bin
.vimrc
.gvimrc
.gitconfig
"

for f in $FILES
do
    DEST=~/$f
    SRC=$REPO/${f#.}
    [ ! -e $DEST ] && ln -s $SRC $DEST 2>/dev/null
done

cd vim/bundle/command-t
rake make

