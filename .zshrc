# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/briandrennan/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

alias sls-sso=~/Abacus2/kitchen-souschef/user-scripts/./sls-sso

#### NVM #####
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

###### Plugins ######
plugins=(git)


# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/briandrennan/.nvm/versions/node/v13.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/briandrennan/.nvm/versions/node/v13.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export TERM=xterm-256color

# Autocomplete
autoload -Uz compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Created by `userpath` on 2020-06-02 13:17:56
export PATH="$PATH:/Users/briandrennan/.local/bin"

export AWS_SDK_LOAD_CONFIG=1

# Powerlevel 10 Theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# ------- Python ------------ #
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"

# Personal configuration files
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# If poetry wasn't deactivated correctly, use this command
alias poetry_shell='. "$(dirname $(poetry run which python))/activate"'

