#!/bin/bash

# 最新のRubyを入れる
latest=`rbenv install --list | grep -v - | tail -n 1`
current=`rbenv versions | tail -n 1 | cut -d' ' -f 2`
if [ ${current} != ${latest} ]; then
  rbenv install ${latest}
  rbenv global ${latest}
fi

echo "end!"
