#
# ~/.bashrc
#

## General
[[ $- != *i* ]] && return # If not running interactively, don't do anything
alias ls='ls --color=auto' # Add color formatting to `ls` standard output
echo -e 'tldr\t\tsummarize a command\napropos\t\tsearch the manual pages for names and descriptions\nlocate\t\tfind a file quickly' # Startup informational message
PS1='[\u@\h \W]\$ ' # Shell prompt ("dane@archlinux ~]$")

## `python`
# Created by `pipx` on 2023-09-11 00:08:28
export PATH="$PATH:/home/dane/.local/bin"
#eval "$(pyenv init -)" # `pyenv` initialization

## `vim`
# Set default `.vimrc` file
export VIMINIT='source $MYVIMRC'
export MYVIMRC='~/.vim/.vimrc'
# Set default `man` page viewer
export MANPAGER='vim -M +MANPAGER -'
