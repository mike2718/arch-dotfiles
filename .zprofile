#
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

export TERM="xterm-256color"

export XDG_CONFIG_HOME="${HOME}/.config"

TZ='Asia/Shanghai'; export TZ

export VISUAL="/usr/bin/vim"
[ -n "$DISPLAY" ] && export EDITOR="/usr/bin/scite" || export EDITOR="/usr/bin/vim"
export SUDO_EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/less"
[ -n "$DISPLAY" ] && export BROWSER=google-chrome-stable || export BROWSER=links

# xorrisofs刻录用
#export MKISOFS="xorrisofs"
# 强制cdrecord/xorrisofs用最低速度写入，同-speed选项
export CDR_SPEED=1

# curl proxy
#export http_proxy="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"

# proxy
#export https_proxy="http://127.0.0.1:7890"
#export HTTP_PROXY="${http_proxy}"
# ftp proxy
#export ftp_proxy="ftp://127.0.0.1:21"

export INFODIR="/usr/share/info:/usr/local/share/info"

