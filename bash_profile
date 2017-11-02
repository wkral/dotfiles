set -o vi

alias vi="vim"

stty -ixon -ixoff

export FZF_DEFAULT_COMMAND='rg --files --follow'

export PATH=~/bin:$PATH

if [[ -f ~/.local_profile ]]; then
    source ~/.local_profile
fi
