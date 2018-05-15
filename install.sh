#!/bin/bash 

sudo apt-get update
sudo apt-get install build-essential 
sudo apt-get install curl


# install linuxbrew
sudo apt install linuxbrew-wrapper

# might not need this 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile


#install zsh
sudo apt install zsh

#use zsh as default shell, this changes after a logout
chsh -s $(which zsh)

mv profile/.zshrc ~/.zshrc
. ~/.zshrc

mv git/.gitconfig ~/.config


# install omgzsh
# install oh my zsh
#https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install go
brew install go

# install docker
brew install docker

# install neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
mkdir ~/.config/nvim
cp nvim/init.vim ~/.config/nvim

#install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#nvim then plugINstall
sudo apt install python3-pip
pip3 install neovim

# install vscode

# use thise to remap capslock to control and others
sudo apt-get install gnome-tweak-tool 

# create sshkey for git and stuffs- replace with my email 
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip
#clip and paste in git ssh keys
#xclip -sel clip < ~/.ssh/id_rsa.pub


sudo apt install i3

