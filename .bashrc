#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Created by `pipx` on 2023-09-11 00:08:28
export PATH="$PATH:/home/dane/.local/bin"

# `pyenv` initialization
#eval "$(pyenv init -)"

# Set default `.vimrc` file
export VIMINIT='source $MYVIMRC'
export MYVIMRC='~/.vim/.vimrc'

# Set default `man` page viewer
#export MANPAGER='vim -M +MANPAGER -'
export MANPAGER='less'
