
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=5000
setopt autocd extendedglob nomatch notify
unsetopt beep # no beep

bindkey -v # vi mode
export KEYTIMEOUT=5 # default esc key timeout is 0.4s this sets the timeout to 0.05s
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/genshin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

fpath+=($HOME/.zsh/pure)

autoload -Uz promptinit
promptinit
prompt pure

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1 # for sudo

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# in order to accept suggestion with ctrl + space
bindkey '^ ' autosuggest-accept

alias gs="git status"
alias sus="sudo systemctl stop bluetooth.service && systemctl suspend"
alias status="sudo systemctl status"
alias stop="sudo systemctl stop"
alias start="sudo systemctl start"
alias reload="sudo systemctl daemon-reload"
alias restart="sudo systemctl restart"
alias hetzner-anton="ssh anton@116.203.234.212"

# the color auto is specified in order for the colors to work
alias l="ls -al --color=auto"
alias ls="ls --color=auto"

function gacp() {
  git add .
  git commit -m "$1"
  git push
}

# In order for the nvim term to use zsh
export SHELL="/usr/bin/zsh"

export SUDO_EDITOR="/usr/bin/nvim"

bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-history
