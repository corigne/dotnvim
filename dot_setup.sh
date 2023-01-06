#!/bin/bash

#Creates the nvim config dir, installs vimplug, and installs plugins.
cd $HOME
printf "Installing vimplug...\n"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

printf "Adding nvim init.vim to .gitignore...\n"
cd $HOME/.config/nvim
git update-index --assume-unchanged init.vim

printf "\n"
printf "neovim plugins installed... setup complete!\n"
