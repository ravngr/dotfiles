#!/bin/bash

### Install config files
# Locate script path
export DOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# List of directories to create
dirs=( .dotbackup .vim )

# List of files to link
files=( bash_logout bash_profile bashrc gitconfig profile tmux.conf tmux-powerlinerc vimrc zshrc )

# Create directories
for d in "${dirs[@]}"; do
    mkdir -p ~/$d
done

for f in "${files[@]}"; do
    # Unlink existing
    if [ -L ~/.$f ]; then
	unlink ~/.$f
    fi

    # Backup any existing files
    if [ -e ~/.$f ] && [ ! -L ~/.$f ]; then
	cp ~/.$f ~/.dotbackup/.$f.bak
    fi

    # Create link to config file
    ln -sf $DOT_PATH/$f ~/.$f
done

### Install modules
cp -R $DOT_PATH/vim-colorschemes/colors ~/.vim/colors
cp -R $DOT_PATH/Cpp11-Syntax-Support/syntax ~/.vim
cp -R $DOT_PATH/nerdtree/{autoload,doc,lib,nerdtree_plugin,plugin,syntax} ~/.vim
cp -R $DOT_PATH/vim-airline/{autoload,doc,plugin,t} ~/.vim

### Alias
if [ -f /usr/bin/zsh ]; then
    ln -s /usr/bin/zsh ~/.zsh
elif [ -f ~/local/bin/zsh ]; then
    ln -s ~/local/bin/zsh ~/.zsh
else
    echo "Cannot setup zsh link to ~/.zsh, tmux may not run properly"
fi

