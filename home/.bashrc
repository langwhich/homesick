if [ -z "$PS1" ]; then
  return
fi

PATH="/bin:/sbin:/usr/X11R6/bin"
PATH="/usr/bin:/usr/sbin:${PATH}"
PATH="/usr/local/bin:/usr/local/sbin/:${PATH}"

<% if File.exists? '/usr/local/bin/brew' and `brew --prefix php` -%>
PATH="<%= `brew --prefix php` %>/bin:${PATH}"
<% end -%>

PATH="~/.rbbld/bin:${PATH}"
PATH="~/.rbenv/bin:${PATH}"

export PATH

if [ -d "${HOME}/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

source ~/.bash/config
source ~/.bash/functions
source ~/.bash/completion
source ~/.bash/aliases
source ~/.bash/prompt

if [ -f "~/.localrc" ]; then
  source ~/.localrc
fi
