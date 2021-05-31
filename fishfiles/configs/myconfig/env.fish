# Mac
set -x PATH $PATH /usr/local/bin # for intellij
set -x PATH $PATH /opt/homebrew/opt/openjdk/bin # for intellij

# homebrew
eval (/opt/homebrew/bin/brew shellenv)

# nodenv
# set -Ux fish_user_paths $HOME/.nodenv/bin $fish_user_paths
eval (nodenv init - | source)
