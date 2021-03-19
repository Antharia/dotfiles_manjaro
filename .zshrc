export PATH="/home/antharia/.local/bin:$PATH"
export ZSH="$HOME/.zshrc"

autoload -Uz compinit && compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/antharia/.zshrc'
zstyle ':completion:*' list-suffixes 
zstyle ':completion:*' expand prefix suffix 
zstyle ':completion:*' verbose yes

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
alias dualscreen='sh ~/.screenlayout/dual_screen.sh'
alias bigscreen='sh ~/.screenlayout/big_screen.sh'
alias backup_dotfiles="~/Repos/dotfiles/backup_dotfiles.sh"
alias godot='~/Apps/Godot_v3.2.3-stable_x11.64'
alias guetech='ssh jack@217.69.13.179 -i ~/.ssh/guetech_id_rsa'

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

# FUNCTIONS

function ippub {
  wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d" " -f 6 | cut -d\< -f 1
}
