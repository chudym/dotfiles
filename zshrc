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
export LC_ALL='en_US.UTF-8'
export EDITOR='vim'
export ASPNETCORE_ENVIRONMENT=Development
export GEOS_DIR=/usr/local/Cellar/geos/3.6.2

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/opt/libxml2/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
