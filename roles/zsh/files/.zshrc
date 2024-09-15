# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f "$ZDOTDIR/.aliasrc" ] && source "$ZDOTDIR/.aliasrc"
[ -f "$ZDOTDIR/.optionrc" ] && source "$ZDOTDIR/.optionrc"
[ -f "$ZDOTDIR/.pluginrc" ] && source "$ZDOTDIR/.pluginrc"

HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt nobeep

bindkey -e
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

zstyle :compinstall filename '$ZDOTDIR/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

autoload -Uz compinit; compinit

source "$ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme"
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh"

# FPATH=($ZDOTDIR/zsh-completions/src $FPATH)

# To customize prompt, run `p10k configure` or edit "$ZDOTDIR/.p10k.zsh"
[[ -f "$ZDOTDIR/.p10k.zsh" ]] && source "$ZDOTDIR/.p10k.zsh"

eval "$(fzf --zsh)"
# eval "$(zoxide init --cmd cd zsh)"

# Should be sourced last
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
