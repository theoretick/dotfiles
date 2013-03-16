##Dotfiles##

Collection of my personal config dotfiles. 
If you see anything you like, feel free to fork/grab away.

Set up script forked and modified from Michael J Smalley
(http://github.com/michaeljsmalley/dotfiles).

Some issues with the script right now
- recursive vim in vimfolder
- hopefully add var to pull all new files,
 so I dont have to manually edit everytime

###Function###
Backs up existing dotfiles to ~/dotfiles_old', and symlinks
new ones from repo folder.

###Contains###
- bashrc
- gitconfig (sans gitconfig.local w/ credentials)
- vimrc
-- vim color and configs
- wgetrc
- post-commit (githook to take imagesnap photo and store in dropbox)
