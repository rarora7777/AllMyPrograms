[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source ~/git-prompt.sh

precmd() {
 __posh_git_ps1 $CONDA_PROMPT_MODIFIER'%1~ ' '$ '
}

[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

autoload -Uz compinit && compinit

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.aliases

export TMPDIR="/tmp/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rarora/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rarora/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rarora/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rarora/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

