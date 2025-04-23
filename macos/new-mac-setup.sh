# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install git and git-related shell formatting stuff
brew install git cmake
brew install bash-completion zsh-autosuggestions
brew install wget

cd ~
wget https://raw.githubusercontent.com/lyze/posh-git-sh/refs/heads/master/git-prompt.sh

# install miniconda
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

# install math symbols input
cd ~/Downloads
wget https://github.com/knrafto/MathSymbolsInput/releases/latest/download/MathSymbolsInput.pkg
installer -pkg MathSymbolsInput.pkg -target CurrentUserHomeDirectory
