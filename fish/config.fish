# colordiff
if which colordiff
  alias diff="colordiff -u"
  else
    alias diff="diff -u"
    end

# pyenv
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)

