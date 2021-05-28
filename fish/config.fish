# colordiff
if which colordiff
  alias diff="colordiff -u"
  else
    alias diff="diff -u"
    end

# pyenv
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# jenv
set PATH $HOME/.jenv/bin $PATH
jenv enable-plugin export

# ios
alias clean-deriverd="rm -rf '~/Library/Developer/Xcode/DerivedData/*'"
