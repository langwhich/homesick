if [ -z "$PS1" ]; then
  return
fi

PATH="/bin:/sbin:/usr/X11R6/bin"
PATH="/usr/bin:/usr/sbin:${PATH}"
PATH="/usr/local/bin:/usr/local/sbin/:${PATH}"
PATH="`brew --prefix php`/bin:${PATH}"
export PATH

if [ -d $HOME/.rbenv ]; then
  if [ $UID = 0 ]; then
    export RBENV_ROOT="/usr/local/rbenv"
  else
    export RBENV_ROOT="$HOME/.rbenv"
  fi
  
  export PATH="$RBENV_ROOT/bin:$PATH"

  eval "$(rbenv init -)"
fi

source $HOME/.bash/config
source $HOME/.bash/functions
source $HOME/.bash/completion
source $HOME/.bash/aliases
source $HOME/.bash/prompt

if [ -f $HOME/.localrc ]; then
  source $HOME/.localrc
fi
