export DISCORDO_TOKEN="NDgzOTQwOTQ2MDU3MTAxMzI1.GJ0J9X.A4hDtgyhTIbELHG7T283Ea8T9N1bHPm8oCSiC8"
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

# opencode
export PATH=/Users/jbellon/.opencode/bin:$PATH

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/jbellon/.lmstudio/bin"
# End of LM Studio CLI section


. "$HOME/.local/bin/env"
