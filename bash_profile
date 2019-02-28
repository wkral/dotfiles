export EDITOR=vim
export BROWSER=firefox

export FZF_DEFAULT_COMMAND='rg --files --follow'

if [[ -f "$HOME/.local_profile" ]]; then
    source "$HOME/.local_profile"
fi

