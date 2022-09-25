#!/usr/bin/bash
#################################################################
#                                                               #
#   .bash_profile file                                          #
#                                                               #
#   Executed from the bash shell when you log in.               #
#                                                               #
#################################################################
# shellcheck source=.bash_profile
#source ~/.bashrc
#source ~/.bash_login
export PATH="/home/mike/bin:/usr/local/lib:${PATH}"
export LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"
export TERM="xterm-256color"

export XDG_CONFIG_HOME="${HOME}/.config"
export GOPATH="${XDG_DATA_HOME}/go"

#TZ='Asia/Shanghai'; export TZ
export TZ=":/usr/share/zoneinfo/Asia/Shanghai"
SHELL="/usr/bin/bash"

export VISUAL=nvim
[ -n "$DISPLAY" ] && export EDITOR="/usr/bin/scite" || export EDITOR="/usr/bin/nvim"
export SUDO_EDITOR="/usr/bin/nvim"
export PAGER="/usr/bin/less"
[ -n "$DISPLAY" ] && export BROWSER=firefox || export BROWSER=links

# xorrisofs刻录用
export MKISOFS="xorrisofs"
# 强制xorrisofs使用最低写入速度写入
export CDR_SPEED=1

# zip默认压缩参数
export ZIPOPT='-9'

# rar默认压缩参数
#export RAR='-m5 -rr5 -s -md128 -ol'
export RAR='-m5 -rr5'

# curl的代理只用这些环境变量
#export http_proxy="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"
# 其他代理
#export https_proxy="http://127.0.0.1:7890"
#export HTTP_PROXY="${http_proxy}"

export INFODIR="/usr/share/info:/usr/local/share/info"

[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.bash_login ]] && . ~/.bash_login
