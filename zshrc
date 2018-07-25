export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
ENABLE_CORRECTION="false"
DEFAULT_USER=marcin

plugins=(git npm)

source $ZSH/oh-my-zsh.sh
source ~/.git-open-pr.sh

export LANG=en_US.UTF-8
export EDITOR='vim'
export ASPNETCORE_ENVIRONMENT=Development

fpath=(/usr/local/share/zsh-completions $fpath)
