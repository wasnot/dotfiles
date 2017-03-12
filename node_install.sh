#!/bin/bash

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
latest=`nvm ls-remote | grep -v - | tail -n 1`
nvm install ${latest}

echo "end!"
