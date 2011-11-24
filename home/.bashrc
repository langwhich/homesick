if [ -z "$PS1" ]; then
  return
fi

PATH="/bin:/sbin:/usr/X11R6/bin"
PATH="/usr/bin:/usr/sbin:${PATH}"
PATH="/usr/local/bin:/usr/local/sbin/:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source $HOME/.bash/config
source $HOME/.bash/functions
source $HOME/.bash/completion
source $HOME/.bash/aliases
source $HOME/.bash/prompt

if [ -f $HOME/.localrc ]; then
  source $HOME/.localrc
fi
