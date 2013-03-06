#!/bin/bash
#############################################
# Script based on original code by:
# Michael J Smalley, http://github.com/michaeljsmalley
#
# name: make.sh
# desc: creates symlinks from home to dotfiles in ~/dotfiles
#############################################

########## Variables

dir=~/Projects/dotfiles.git       # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files="aliases bashrc gitconfig wgetrc vimrc vim" # list of files/folders to symlink in homedir

##########

# create .dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move existing dotfiles in home to dotfiles_old and create
# symlinks from home to any files in ~/dotfiles listed in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/$olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

