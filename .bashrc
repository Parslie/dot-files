#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\w]$ '
PS2='> '

source /usr/share/nvm/init-nvm.sh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias dot="git --git-dir=$HOME/.dot --work-tree=$HOME"

export EDITOR=nvim
