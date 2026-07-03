autoload -U history-search-end

export PATH=$PATH:/opt/scripts

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git direnv)

source $ZSH/oh-my-zsh.sh

export CURRENT_FG='black'
export CURRENT_BG='yellow'

alias calc="octave --eval"
alias vim=nvim
alias tldr-browse="tldr -l | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr"
bindkey "^R" fzf-history-widget

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. "$HOME/.local/bin/env"
