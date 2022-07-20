#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

# .始まりのファイルをsymlink
echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".require_oh-my-zsh" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    [ "$f" = ".gitignore" ] && continue

    ln -snfv "$THIS_DIR/$f" ~
done

defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
