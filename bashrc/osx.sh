
[ `uname` == 'Darwin' ] || return

BASHCOMP="`brew --prefix`/etc/bash_completion"
[ -f "$BASHCOMP" ] && . "$BASHCOMP"

export NODE_PATH="/usr/local/bin/node:/usr/local/lib/node_modules"
export NODE_HOME='/usr/local/bin'
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/opt/ruby/bin:/usr/local/share/npm/bin:$PATH
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/
export LSCOLORS='gxfxcxdxbxegedabagaced'
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

alias run='open'
alias df='df -h | grep --color=no -e "^Filesystem\|^/dev/"'
alias ll='ls -lh -F'
alias screenshot='imageSnap'
alias green='screenshot /dev/null > /dev/null'
alias mtr='sudo mtr'
alias today='grep `date +"%m/%d"` /usr/share/calendar/calendar.*'
alias truecrypt='/Applications/TrueCrypt.app/Contents/MacOS/Truecrypt -t' #always use terminal mode
alias pyserver='python -m SimpleHTTPServer'
alias unmount='diskutil umount'
alias wifi='osx-wifi-cli'
alias mylocalip='ifconfig | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127."'
alias eject='drutil eject' # remove when cds will finally die
alias updatebrewcask='brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup'
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

osxsleep() {
	sleep `echo "scale=4; 60 * ${1:-0}" | bc` && pmset sleepnow
}

#ding
#usage:
#npm install ; ding
function ding(){
  if [[ $? != 0 ]] ; then
    afplay /System/Library/Sounds/Basso.aiff
  else
    afplay /System/Library/Sounds/Glass.aiff
  fi
}
