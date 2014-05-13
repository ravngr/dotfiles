#!/bin/bash

# Attempt to install

# Locate script path
export DOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# List of directories to create
dirs=( .dotbackup .vim .vim/colors )

# List of files to link
files=( .bash_logout .bashrc .profile .tmux.conf .tmux-powerlinerc .vimrc .zshrc )

# Create directories
for d in "${dirs[@]}"; do
    mkdir -p ~/$d
done

for f in "${files[@]}"; do
    # Backup any existing files
    if [ -f ~/$f ]; then
	cp ~/$f ~/.dotbackup
    fi

    # Create link to config file
    ln -s $DOT_PATH/$f ~/$f
done

### Install modules
cp -R $DOT_PATH/vim-airline/{autoload,doc,plugin,t} ~/.vim
cp -R $DOT_PATH/nerdtree/{autoload,doc,lib,nerdtree_plugin,plugin,syntax} ~/.vim
