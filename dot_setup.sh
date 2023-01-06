#!/bin/bash

#Creates the nvim config dir, installs vimplug, and installs plugins.
cd $HOME
echo 'Installing vimplug'

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

echo "Adding nvim init.vim to .gitignore..."
cd $HOME/.config/nvim
git update-index --assume-unchanged init.vim

echo \n
echo "neovim plugins installed... setup complete!"
