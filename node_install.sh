#!/bin/bash

# nvm
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

#source ~/.bash_profile
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# latest=`nvm ls-remote | grep -v - | tail -n 1`
# nvm install ${latest}


# fnm
fnm completions --shell fish
echo "fnm env --use-on-cd | source" > ~/.config/fish/conf.d/fnm.fish

echo "end!"
