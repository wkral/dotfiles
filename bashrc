alias vi="vim"

stty -ixon -ixoff

if which fzf-share > /dev/null; then
    source $(fzf-share)/key-bindings.bash
fi
