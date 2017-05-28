export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/marcin/.oh-my-zsh

ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
DEFAULT_USER=marcin

plugins=(git npm)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='vim'
export SSH_KEY_PATH="/home/marcin/.ssh/id_rsa"
