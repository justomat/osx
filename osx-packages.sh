
# install Homebrew
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# get homebrew cask
brew install caskroom/cask/brew-cask
brew tap homebrew/dupes
brew tap caskroom/versions
brew tap caskroom/fonts

binaries=(
  coreutils
  findutils
  bash
  git
  vim
  curl
  wget
  homebrew/dupes/grep
)

apps=(
  google-chrome
  python
  python3
  atom
  iterm2
  alfred
  spectacle
  gitbox
  dropbox
  robomongo
  sublime-text3
  boot2docker
  docker-compose
  asepsis
  java
)

fonts=(
  font-roboto
  font-inconsolata-dz
  font-source-code-pro
)

echo "installing binaries"
brew install ${binaries[@]}

echo "installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
brew cask alfred link

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
# install node
nvm install stable
nvm alias default stable

pip install --upgrade distribute
pip install --upgrade pip

#echo "PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH" >> ~/.bash_profile

