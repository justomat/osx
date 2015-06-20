# install Xcode CLI Tools
# create the placeholder file that's checked by CLI updates' .dist code
# in Apple's SUS catalog
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
# find the CLI Tools update
PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
# install it
softwareupdate -i "$PROD" -v
rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

# install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# get homebrew cask
brew install caskroom/cask/brew-cask

brew install git vim curl wget
brew cask install  google-chrome \
 python python3 atom iterm2 alfred \
 spectacle gitbox dropbox robomongo \
 sublime-text boot2docker docker-compose \
 asepsis java \

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
# install node
nvm install stable
nvm alias default stable

pip install --upgrade distribute
pip install --upgrade pip
