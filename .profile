# Android
export PATH=$PATH:/Applications/adt/android-sdk-macosx/platform-tools:/Applications/adt/sdk/tools
export PATH=$PATH:/Applications/adt/android-ndk-r11c
export PATH=$PATH:/Applications/adt/android-sdk-macosx/build-tools/22.0.1
# export JAVA_HOME=$(/usr/libexec/java_home)
# export STUDIO_JDK=${JAVA_HOME%/*/*}
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/build-tools/22.0.1"

# added by Anaconda3 2.3.0 installer
#export PATH="$HOME/anaconda/bin:$PATH"

# git completion
# source ~/.git-completion.bash
source ~/.git-prompt.sh

# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# # pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# # for ignore brew warning
# alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"

### Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# poetry
export PATH="$HOME/.local/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# java_home
#export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.6"`
#PATH=${JAVA_HOME}/bin:${PATH}

# # jEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# export JENV_ROOT=/usr/local/opt/jenv
# if which jenv > /dev/null; then eval "$(jenv init -)"; fi
# export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# ios cache clean
alias derived='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

# brew sbin path
export PATH="/usr/local/sbin:$PATH"

ssh-add --apple-use-keychain $HOME/.ssh/bitbucket/id_rsa 2>/dev/null
ssh-add --apple-use-keychain $HOME/.ssh/github/id_rsa 2>/dev/null
ssh-add --apple-use-keychain $HOME/.ssh/gitlab/id_rsa 2>/dev/null
ssh-add --apple-use-keychain $HOME/.ssh/google_compute_engine 2>/dev/null
# ssh-add -K $HOME/.ssh/sensy/id_rsa 2>/dev/nulls
ssh-add --apple-use-keychain $HOME/.ssh/wasnot/id_rsa 2>/dev/null

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fnm
eval "$(fnm env)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export DPRINT_INSTALL="$HOME/.dprint"
export PATH="$DPRINT_INSTALL/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# # appengine
# export PATH="$HOME/google-cloud-sdk/platform/google_appengine:$PATH"

# # The next line updates PATH for the Google Cloud SDK.
# #if [ -f "$HONE/google-cloud-sdk/path.bash.inc" ]; then 
# source "$HOME/google-cloud-sdk/path.bash.inc"
# #; fi

# # The next line enables shell command completion for gcloud.
# #if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then 
# source "$HOME/google-cloud-sdk/completion.bash.inc"
# #; fi
# export CLOUDSDK_PYTHON_SITEPACKAGES=1


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=~/Documents/cocos2d-x-3.17.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=~/Documents
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=~/Documents/cocos2d-x-3.17.1/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# cordova
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator/

# flutter
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/fvm/default/bin


# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then . '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then . '~/google-cloud-sdk/completion.bash.inc'; fi

# Rust
. "$HOME/.cargo/env"

# FlutterFire
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Docker for m1 mac
ARCH=$(uname -m)
if [ $ARCH = "arm64" ]; then
  export DEVELOP_DOCKER_FILE=develop.m1.Dockerfile
fi

exec fish
