#!/bin/bash
# shellcheck source=.bash_profile
#
#. /usr/share/clang/bash-autocomplete.sh

#PATH="/home/mike/amule/bin:/home/mike/bin:/usr/local/bin:${PATH}"
PATH="/home/mike/amule/bin:/home/mike/.local/bin:/home/mike/bin:${PATH}"

LD_LIBRARY_PATH="/home/mike/dev/wxWidgets-3.0.5/lib:/usr/local/lib:${LD_LIBRARY_PATH}"

LANG=en_US.UTF-8
export LANG

TERM="xterm-256color"

export XDG_CONFIG_HOME="${HOME}/.config"
#export GOPATH="${XDG_DATA_HOME}/go"

#TZ='Asia/Shanghai'; export TZ
TZ=":/usr/share/zoneinfo/Asia/Shanghai"
export TZ

export VISUAL="/usr/bin/vim"
export SUDO_EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/less"
export LESS='-R --use-color -Dd+r$Du+b'
#[ -n "$DISPLAY" ] && export EDITOR="/usr/bin/scite" || export EDITOR="/usr/bin/vim"
if [ -n "$DISPLAY" ]; then
    export EDITOR="/usr/bin/scite"
else
    export EDITOR="/usr/bin/vim"
fi
#[ -n "$DISPLAY" ] && export BROWSER=firefox || export BROWSER=links
if [ -n "$DISPLAY" ]; then
    BROWSER=firefox
    export BROWSER
else
    BROWSER=links
    export BROWSER
fi

# xorrisofs刻录用
MKISOFS="xorrisofs"
# 强制xorrisofs使用最低写入速度写入
CDR_SPEED=1

RANDOM=$(od -vAn -N2 -tu2 < /dev/urandom)

# rar默认压缩参数
#RAR='-m5 -rr5 -s -md64 -ol'

# curl的代理只用这些环境变量
#export http_proxy="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"
# 其他代理
#export https_proxy="http://127.0.0.1:7890"
#export HTTP_PROXY="${http_proxy}"

#INFODIR="/usr/share/info:/usr/local/share/info"

#[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.bash_login ]] && . ~/.bash_login
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
if [ -f ~/.bash_login ]; then . ~/.bash_login; fi

