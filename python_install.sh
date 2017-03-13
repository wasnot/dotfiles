#!/bin/bash

# python
pyenv install 2.7.13
pyenv install 3.6.0

# gcp
curl https://sdk.cloud.google.com | bash
pyenv shell 2.7.13
gcloud components install app-engine-python

echo "end!"
