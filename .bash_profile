# Android
export PATH=$PATH:/Applications/adt/android-sdk-macosx/platform-tools:/Applications/adt/sdk/tools
export PATH=$PATH:/Applications/adt/android-ndk-r11c
export PATH=$PATH:/Applications/adt/android-sdk-macosx/build-tools/22.0.1
export JAVA_HOME=$(/usr/libexec/java_home)
export STUDIO_JDK=${JAVA_HOME%/*/*}

# added by Anaconda3 2.3.0 installer
#export PATH="$HOME/anaconda/bin:$PATH"

# git completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# for ignore brew warning
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"

### Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# The next line updates PATH for the Google Cloud SDK.
source "$HOME/Documents/gcp/sdk/google-cloud-sdk/path.bash.inc"

# The next line enables shell command completion for gcloud.
source "$HOME/Documents/gcp/sdk/google-cloud-sdk/completion.bash.inc"
# go_appengine
export PATH=$PATH:$HOME/Documents/gcp/sdk/go_appengine


# rbenv
eval "$(rbenv init -)"

# java_home
#export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.6"`
#PATH=${JAVA_HOME}/bin:${PATH}

# jEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# brew sbin path
export PATH="/usr/local/sbin:$PATH"

ssh-add -K $HOME/.ssh/bitbucket/id_rsa 2>/dev/null
ssh-add -K $HOME/.ssh/github/id_rsa 2>/dev/null
ssh-add -K $HOME/.ssh/gitlab/id_rsa 2>/dev/null
ssh-add -K $HOME/.ssh/google_compute_engine 2>/dev/null
ssh-add -K $HOME/.ssh/sensy/id_rsa 2>/dev/null
ssh-add -K $HOME/.ssh/wasnot/id_rsa 2>/dev/null

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

