
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

for TYPE in 'general' 'osx' 'linux' 'work' 'crap' 'ps1' 'gitignored'
do
  FILE="$HOME/.home/bashrc/$TYPE.sh"
  test -f $FILE && . $FILE
done

# sets the history length to unlimited size
export HISTFILESIZE=
export HISTSIZE=

# immediately save commands to history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
