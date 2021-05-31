# fish install
# realpathが動かない

script_dir=$(cd $(dirname $0); pwd)

#if type fish >/dev/null 2>&1; then
#  echo "skip: fish already installed"
#else
#  brew install fish
#  echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
#  chsh -s /opt/homebrew/bin/fish
#fi

if [ ! -f "~/.config/fish/config.fish" ]; then
  cd $script_dir
  fishfiles_path=$(realpath ../fishfiles)/config.fish
   echo source $fishfiles_path >> ~/.config/fish/config.fish
fi
