#!/bin/bash

#rsync -rv --exclude=README.md --exclude=install.sh --exclude=.git $(dirname "$0")/ ~
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
dotfilesdir=$(dirname "$0")
echo $dotfilesdir
echo $(dirname $(realpath -s $0))
excluded=".git README.md install.sh"
included=".bash_"
#finish sometime :)
#for file in ls dotfilesdir; do
#    ln -s $dir/$file ~/.$file
#done
rm ~/.bash_profile
rm ~/.vim
rm ~/.minttyrc
rm ~/.tmux.conf
rm ~/.inputrc
rm ~/bin
ln -s $dotfilesdir/.bash_profile ~/.bash_profile
ln -s $dotfilesdir/.vim ~/.vim
ln -s $dotfilesdir/.minttyrc ~/.minttyrc
ln -s $dotfilesdir/.tmux.conf ~/.tmux.conf
ln -s $dotfilesdir/.inputrc ~/.inputrc
ln -s $dotfilesdir/bin ~/bin

#download ack - ack already in bin
#curl https://beyondgrep.com/ack-v3.4.0 > ~/bin/ack && chmod 0755 ~/bin/ack

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
