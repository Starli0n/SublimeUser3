# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


##############
### COLORS ###
##############

### ANSI COLORS
CRE="$(echo -e '\r\033[K')"
RED="$(echo -e '\033[1;31m')"
GREEN="$(echo -e '\033[1;32m')"
YELLOW="$(echo -e '\033[1;33m')"
BLUE="$(echo -e '\033[1;34m')"
MAGENTA="$(echo -e '\033[1;35m')"
CYAN="$(echo -e '\033[1;36m')"
WHITE="$(echo -e '\033[1;37m')"
NORMAL="$(echo -e '\033[0;39m')"

_colors () {
    echo "${CRE}CRE"
    echo "${RED}RED"
    echo "${GREEN}GREEN"
    echo "${YELLOW}YELLOW"
    echo "${BLUE}BLUE"
    echo "${MAGENTA}MAGENTA"
    echo "${CYAN}CYAN"
    echo "${WHITE}WHITE"
    echo "${NORMAL}NORMAL"
}


################
### VARIABLE ###
################

export BASHRC_FILE="$HOME/.bashrc"

export VAR_LS="ls -p   --show-control-chars -F --color"
export VAR_LL="ls -pl  --show-control-chars -F --color"
export VAR_LA="ls -pla --show-control-chars -F --color"
export EDITOR='rsub'
#export PS1="[\u@\h \W]\$"
export PS1="\n$BLUE\u$CYAN@$MAGENTA\h $GREEN\w $RED\$(git branch 2> /dev/null)\n${YELLOW}λ $NORMAL"
export USR_SRC="/usr/local/src"
export USR_BIN="/usr/local/bin"


#############
### ALIAS ###
#############

### aliases
alias ralias='source $BASHRC_FILE'
alias aliases='$EDITOR $BASHRC_FILE'
#alias unalias=unalias
alias aliash='cat $BASHRC_FILE'

### Shell
alias cls='clear'
alias ls='$VAR_LS'
alias ll='$VAR_LL'
alias la='$VAR_LA'
alias l='$VAR_LA'
alias spath='echo -e ${PATH//:/\\n}'
#alias upath=
alias lib='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias ..='cd ..'
alias cd..='cd ..'
#alias cdh='cd'
alias src='cd $USR_SRC'
alias bin='cd $USR_BIN'
alias ph='pushd'
alias pp='popd'
alias setv='_setv(){ env | grep ^$1; }; _setv' # Show variables starting with $1
alias h='cat $HOME/.bash_history'
alias clsh='cat /dev/null>$HOME/.bash_history'

### Git
alias g='git'
alias gg='python $USR_BIN/colorcfg/colorcfg.pyc $HOME/.gitconfig'
alias gl='git log --pretty=oneline --color --abbrev-commit --graph --decorate --all'
alias gll='git log --pretty=oneline --color --abbrev-commit --graph --decorate --first-parent'
alias gst='git status'
alias gdt='git difftool'
alias gh='cat $HOME/.gitconfig'
alias gv='git --version'

### Sublime Text
alias subl='rsub'

### Tools
alias ver='which git;git --version;which python;python --version'

### Network
alias ip='ifconfig'
alias ipa='ifconfig -a'
alias dns='echo set all | nslookup'
alias port='netstat -a | grep'
alias pdump='tcpdump tcp port 3128'

### Process
alias psa='psa -aef'
alias k1='kill %1'

uproxy () {
    unset http_proxy
    unset https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    echo proxy unset
}

_proxy () {
    export http_proxy=$1
    export https_proxy=$1
    export HTTP_PROXY=$1
    export HTTPS_PROXY=$1
    echo proxy=$1
}
alias proxy='_proxy http://proxy-name.fr:3128'
alias proxy-local='_proxy socks5://localhost:3128'

#proxy-local

### docker
alias d='docker'
alias dstart='systemctl start docker'
alias dstop='systemctl stop docker'
alias drestart='systemctl restart docker'
alias dr='docker run'
alias drn='docker run --name'
alias dri='docker run -it'
alias dh='_dh(){ docker $* --help; }; _dh'
alias dhw='docker run hello-world'
alias duber='docker run -dit --name uber --volume /var/shared/default:/var/shared ubuntu /bin/bash'
alias dbh='_dbh(){ docker exec -it $* /bin/bash; }; _dbh'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dpse='docker ps --filter status=exited'
alias dpsl='docker ps -lq'
alias dl='docker logs -f'
alias di='docker images'
alias dp='docker pull'
alias ddt='docker diff'
alias dci='docker commit'
alias ds='_ds(){ pushd $DOCKER_HOME; docker save -o Image/${1/\//-}.tar $1; popd; }; _ds' # Replace '/' by '-' in image name
alias dload='_ds(){ pushd $DOCKER_HOME; docker load -i Image/$1.tar; popd; }; _ds'
alias drm='docker rm -f'
alias drme='docker rm $(docker ps --filter status=exited --quiet)'
alias drmi='docker rmi'
alias drmid='docker rmi $(docker images -f "dangling=true" -q)'
alias dinf='docker info'
alias dv='docker version'

alias dc='docker-compose'
alias dcu='docker-compose up' # => docker-compose -f docker-compose.yml -f docker-compose.override.yml up
alias dcd='docker-compose down' # => docker-compose -f docker-compose.yml -f docker-compose.override.yml down
alias dcup='docker-compose -f docker-compose.yml -f production.yml up'
alias dcdp='docker-compose -f docker-compose.yml -f production.yml down'
