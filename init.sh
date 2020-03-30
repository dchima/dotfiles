#!/bin/bash
# based on these two files
# https://github.com/afeld/dotfiles/blob/master/init.sh
# https://github.com/driesvints/dotfiles/blob/master/install.sh

# Die on failures
set -e

# Echo all commands
# set -x

echo "Setting up your Mac..."

command_exists () {
  type "$1" &> /dev/null ;
}

# homebrew
if command_exists brew; then
  brew update
else
  echo "Installing brew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "...brew installed"
fi

# install all brew dependencies with brew

brew bundle

# Set default postgress root password.
sudo chown -R :admin /usr/local
sudo rm -rf /usr/local/var/postgres && initdb /usr/local/var/postgres -E utf8
sudo -u postgres postgres -D /usr/local/var/postgres || sudo sudo -u _postgres postgres -D /usr/local/var/postgres
sudo -u postgres psql --command '\password password' || sudo -u _postgres psql -c "ALTER USER _postgres WITH PASSWORD 'password';"

# Removes .zshrc && .zprofile from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc $HOME/.zprofile
ln -s $HOME/dotfiles/zshrc/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/zshrc/.zprofile $HOME/.zprofile

# done
echo "DONE"