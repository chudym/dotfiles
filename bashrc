# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=200000
HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)    
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then               
    debian_chroot=$(cat /etc/debian_chroot)                                     
fi 

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

for file in ~/.{aliases,functions,git-completion.sh,git-prompt.sh}; do
    [ -r "$file" ] && source "$file";
done;
unset file;

RED="$(tput setaf 1 2>/dev/null || echo '\e[0;31m')" 
GREEN="$(tput setaf 2 2>/dev/null || echo '\e[0;32m')" 
YELLOW="$(tput setaf 3 2>/dev/null || echo '\e[0;33m')" 
BLUE="$(tput setaf 4 2>/dev/null || echo '\e[0;34m')"
PURPLE="$(tput setaf 5 2>/dev/null || echo '\e[0;35m')" 
CYAN="$(tput setaf 6 2>/dev/null || echo '\e[0;36m')"
RESET="$(tput sgr 0 2>/dev/null || echo '\e[0m')"

# set a fancy prompt (assumes that anything connected that supports x-term can support color...)
case "$TERM" in
   xterm*) color_prompt=yes;;
esac

export CLICOLOR=1

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

NC='\[\e[0m\]'
C11='\[\e[1;32m\]'
C13='\[\e[1;34m\]'

export GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND='__git_ps1 "${debian_chroot:+($debian_chroot)}$C11\u@\h$NC $C13\w$NC" "\\$ "'
