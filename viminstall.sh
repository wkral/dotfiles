#!/bin/bash

# If we're not in the actual repo directory none of this will work
[ ! -s viminstall.sh ] && exit 1

git submodule init
git submodule update --depth 1

REPO=${PWD##$HOME/}

FILES=".vim
.vimrc
.gvimrc
"

for f in $FILES
do
    DEST=~/$f
    SRC=$REPO/${f#.}
    [ ! -e $DEST ] && ln -s $SRC $DEST 2>/dev/null
done

# Always fine it's all good
exit 0
