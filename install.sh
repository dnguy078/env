#!/bin/bash 

sudo apt-get update && sudo apt-get install tmux zsh neovim -y
touch ~/.zshrc
chsh -s $(which zsh)

# install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

source <(fzf --zsh)


#mv profile/.zshrc ~/.zshrc
#. ~/.zshrc

mkdir ~/.config/nvim
cp nvim/init.vim ~/.config/nvim

#install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


