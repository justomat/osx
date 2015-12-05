
# install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# get homebrew cask
brew install caskroom/cask/brew-cask
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/php
brew tap caskroom/versions
brew tap caskroom/fonts

binaries=(
  axel
  bash
  brew-cask
  clang-format
  cmake
  coreutils
  curl
  curl
  docker
  docker-compose
  docker-machine
  findutils
  git
  homebrew/dupes/grep
  maven
  php70
  php70-mcrypt
  python
  python3
  thefuck
  tmux
  tree
  vagrant
  vim
  vim
  wget
  zsh
)

apps=(
  alfred
  atom
  ccleaner
  docker-compose
  dropbox
  google-chrome
  haskell-platform
  intellij-idea
  iterm2
  java
  mendeley-desktop
  nvm
  sequel-pro
  spectacle
  sublime-text3
  transmission
  xquartz
  virtualbox
)

fonts=(
  font-anka-coder
  font-fira-code
  font-fira-mono
  font-hasklig
  font-inconsolata-dz
  font-input
  font-monoid
  font-roboto
  font-source-code-pro
)

echo "installing binaries"
brew install ${binaries[@]}

echo "installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
brew cask alfred link

echo "installing fonts"
brew cask install ${fonts[@]}



nvm install stable
nvm alias default stable

pip install --upgrade distribute
pip install --upgrade pip

#echo "PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH" >> ~/.bash_profile

