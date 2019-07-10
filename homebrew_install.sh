#!/bin/bash

# Command line tools
xcode-select --install

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    cask
    peco
    tig
    readline
    colordiff
    jq
#    jenv
#    node
    pyenv
    pyenv-virtualenv
    pyenv-virtualenvwrapper
#    python
#    python3
    numpy
    opencv
    opencv3
    rbenv
    ruby-build
#    swiftenv
    swiftlint
    carthage
    go
    mysql
    sqlite
    hub
    gibo
    gcsfuse
    fish
    fzf
    cmake
)

"brew tap..."
#brew tap homebrew/dupes
#brew tap homebrew/versions
#brew tap homebrew/homebrew-php
#brew tap homebrew/apache
#brew tap sanemat/font
brew tap homebrew/science
brew tap homebrew/fuse

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    dropbox
#    evernote
#    skitch
    google-chrome
    firefox
    appcleaner
#    google-drive
    toggldesktop
    hyperswitch
    clipy
#    fluid
#    mounty

#    slack
#    skype
#    zeplin

#    atom
    iterm2
    visual-studio-code
    virtualbox
    docker    
    sequel-pro

    java
    android-studio
    genymotion

    pycharm-ce
#    googleappengine
#    gogland-eap
    osxfuse
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
