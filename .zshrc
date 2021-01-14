export PATH="/home/antharia/.local/bin:$PATH"
export ZSH="$HOME/.zshrc"

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/antharia/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install




####################
# My Configuration #
####################

export BROWSER="firefox"
export EDITOR="vim"

# Wal : changer terminal colors

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors-tty.sh

# ALIASES

alias ls="ls --color"
alias gruvbox='wal --theme base16-gruvbox-hard'
alias caps='setxkbmap -option caps:super'
alias dualscreen='./dualscreen.sh'

# PROMPT

setprompt() {
  setopt prompt_subst

  if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    p_host='%F{cyan}%M%f'
  else
    p_host='%F{yellow}%M%f'
  fi

  PS1=${(j::Q)${(Z:Cn:):-$'
    %F{cyan}[%f
    %(!.%F{red}%n%f.%F{yellow}%n%f)
    %F{cyan}@%f
    ${p_host}
    %F{cyan}][%f
    %F{blue}%~%f
    %F{cyan}]%f
    %(!.%F{red}%#%f.%F{green}%#%f)
    " "
  '}}

  PS2=$'%_>'
  RPROMPT=$'${vcs_info_msg_0_}'
}
setprompt
