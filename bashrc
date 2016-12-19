# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=100000
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

RED="$(tput setaf 1 2>/dev/null || echo '\e[0;31m')" 
GREEN="$(tput setaf 2 2>/dev/null || echo '\e[0;32m')" 
YELLOW="$(tput setaf 3 2>/dev/null || echo '\e[0;33m')" 
BLUE="$(tput setaf 4 2>/dev/null || echo '\e[0;34m')"
PURPLE="$(tput setaf 5 2>/dev/null || echo '\e[0;35m')" 
CYAN="$(tput setaf 6 2>/dev/null || echo '\e[0;36m')"
RESET="$(tput sgr 0 2>/dev/null || echo '\e[0m')"

find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch=' detached*'
    fi
    git_branch=" ($branch)"
  else
    git_branch=""
  fi
}

find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_prompt_color=$RED
  else
    git_prompt_color=$GREEN
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[${git_prompt_color}\]${git_branch}\[$RESET\]$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# load custom aliases and functions
for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file";
done;
unset file;

unset safe_term match_lhs

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

eval "$(thefuck --alias)"