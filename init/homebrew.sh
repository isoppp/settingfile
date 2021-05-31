# from https://github.com/jfmercer/fishfiles
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
fi

echo "Updating existing Homebrew packages"
brew update

myBrew=( coreutils fzf ghq peco pngquant hub )

myCaskBrew=( qlcolorcode qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo )

# Run installs
echo "Installing Homebrew packages"
for i in ${myBrew[*]}
do
    brew install $i 2>/dev/null
done

echo "Installing Homebrew Cask packages"
for i in ${myCaskBrew[*]}
do
    brew install $i 2>/dev/null
done

# Clean up the Cellar
echo "Cleaning up . . . "
brew cleanup

echo "Homebrew install complete!"

exit 0
