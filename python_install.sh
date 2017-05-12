#!/bin/bash

# python
pyenv install 2.7.13
pyenv install 3.6.0

# gcp
curl https://sdk.cloud.google.com | bash
pyenv shell 2.7.13
gcloud components install app-engine-python

# readline fix
# http://qiita.com/hidekuro/items/546a7945b0ce566a80ee
ln -s /usr/local/opt/readline/lib/libreadline.dylib /usr/local/opt/readline/lib/libreadline.6.dylib

echo "end!"
