##aliases
#existing:
alias grep='grep --color'
alias df='df -hT'
alias du='du -shc'
alias cp='cp -i'
alias rm='rm -iv'
alias mv='mv -i'
alias cd='cd -P'
#new:
alias dff='df | grep --invert-match none'
alias ll='ls -lh -F --color --group-directories-first'
alias la='ll -A'
alias l='clear && ll'
alias laa='`which ls` -la | `which grep` " \."'
alias ..='cd .. && ll'
alias run='xdg-open'
alias nospaces='rename s/\ /_/g' #replaces spaces with underline in target files
alias tolowercase='rename y/A-Z/a-z/' #renames target files to lowercase, errors on dupes?
alias y=''
alias tm='sudo truecrypt -t -k "" --protect-hidden=no' #truecrypt mount file
alias tu='sudo truecrypt -t -d' #truecrypt unmount file or dir
alias tua='truecrypt -t -l | grep -oe "[^ ]\+$" | tu' #truecrypt unmount all
alias tmssh='tm ~/.system/.ssh.tc ~/.ssh' #truecrypt mount .ssh.tc into ~/.ssh
alias d='date +"%Y%m%d"'
alias t='date +"%H%M%S"'
alias updg='sudo apt-get update && sudo apt-get upgrade'
alias screenshot='import -display :0.0 -window root' #by imagemagick. Add a target new file name: screenshot ss_`d`_`t`.png

#functions:
= () { echo "scale=4; ${*}" | bc ; } #calculator
insert () { mkdir $1; mv $1* $1; } #create a dir and move all files with that dir as a prefix into it


