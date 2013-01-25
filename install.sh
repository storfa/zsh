#!/bin/bash

function get_script_dir
{
    local DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    echo $DIR
}

# need to know where the script is executing from
script_dir=$(get_script_dir)

# change to the correct directory
pushd "$script_dir/.."

# rename the repo directory
mv zsh ~/.zsh

# get teh zshuery zsh shell
git clone git://github.com/myfreeweb/zshuery.git ~/.zsh/zshuery 

# get the zsh-git-prompt
git clone git://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/git-prompt 

# rename any old .zsh file
mv ~/.zshrc ~/.zshrc.old

# create a symlink in user home
ln -s ~/.zsh/.zshrc ~/.zshrc 

#set zsh as your default shell
chsh -s /bin/zsh

# source the new zsh file
source ~/.zshrc
