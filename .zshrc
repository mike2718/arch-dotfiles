#

autoload -Uz compinit promptinit
compinit
promptinit

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# This will set the default prompt to the walters theme
#prompt walters

export PROMPT='%F{2}%n%f@%F{5}%m%f %F{4}%B%~%b%f %# '
export RPROMPT='[%F{3}%?%f]'

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
function history-all { history -E 1 }
history-all | grep find | grep tr

ttyctl -f


# 自用命令别名
alias c='clear'
alias s='sync'
alias e='exit'
alias a='awk'
alias g='grep'
alias 7z='7zz'
alias 7za='7zz'
alias rm='rm -f'
alias bc='bc -ql'
alias cp='rsync --archive --compress -hh --info=stats1,progress2 --modify-window=1'
#alias mv='rsync --archive --compress -hh --info=stats1,progress2 --modify-window=1 --remove-source-files'
alias wipe='shred -uvz'
alias date='date +"%F %T"'
alias lsblk='lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL'
alias astyle='astyle -A1 -p -s4 -xC80 -c'
alias pcc='pcc -Wall -Wpedantic -Wextra'
alias gcc='gcc -Wall -Wpedantic -Wextra'
alias clang='clang -Wall -Wpedantic -Wextra'
alias poweroff='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias L='|$PAGER'
alias N='>/dev/null 2>&1'
alias N1='>/dev/null'
alias N2='2>/dev/null'

# git命令
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit --gpg-sign=17C22010D29A50BC'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gs='git status'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

alias lftp='lftp -u mike,123456 192.168.50.9'
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'
alias ping4='ping -4'
alias ping6='ping -6'
alias vi='nvi'

# gpg
alias gpglk='gpg --list-keys --keyid-format=long'
alias gpglsk='gpg --list-secret-keys --keyid-format=long'
alias gpge='gpg --encrypt --recipient 14F27367B1323515B1F61A815BDC731777049B5F'
alias gpgd='gpg --decrypt'


# 自用
alias ls='ls -h -l --color=auto --time-style=+"%Y-%m-%d %H:%M"'
alias l='ls -CF --color=auto'
alias lh='ls -lh --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias l.='ls -d .* --color=auto'
alias dir='ls -ba'
alias cal='cal -S -m --color=auto'
alias grep='grep --color=auto -i'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff -rauN --color=auto'
# 使用单词级别比较的diff
#alias diff='git diff --no-index --color-words'
alias ip='ip --color=auto'
alias fdisk='fdisk --color'
alias curl='curl --remove-on-error'

# gnupg tty
GPG_TTY=$(tty)
export GPG_TTY

# umask
umask 0022

# direnv hook
eval "$(direnv hook zsh)"


# vim: set et sw=4 sts=4 tw=80 ft=sh:
