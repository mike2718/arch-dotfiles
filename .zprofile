#
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

#export PATH="/home/mike/bin:/usr/local/bin:${PATH}"

export TERM="xterm-256color"

export XDG_CONFIG_HOME="${HOME}/.config"

#TZ='Asia/Shanghai'; export TZ
export TZ=":/usr/share/zoneinfo/Asia/Shanghai"
SHELL="/usr/bin/bash"

export VISUAL="/usr/bin/vim"
[ -n "$DISPLAY" ] && export EDITOR="/usr/bin/scite" || export EDITOR="/usr/bin/vim"
export SUDO_EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/less"
[ -n "$DISPLAY" ] && export BROWSER=firefox || export BROWSER=links

# xorrisofs刻录用
export MKISOFS="xorrisofs"
# 强制xorrisofs使用最低写入速度写入
export CDR_SPEED=1

# rar默认压缩参数
#export RAR='-m5 -rr5 -s -md128 -ol'

# curl的代理只用这些环境变量
#export http_proxy="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"
# 其他代理
#export https_proxy="http://127.0.0.1:7890"
#export HTTP_PROXY="${http_proxy}"

export INFODIR="/usr/share/info:/usr/local/share/info"

