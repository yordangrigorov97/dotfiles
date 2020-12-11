#!/bin/bash

#rsync -rv --exclude=README.md --exclude=install.sh --exclude=.git $(dirname "$0")/ ~
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
dotfilesdir=$(dirname "$0")
#echo $dotfilesdir
#echo $(dirname $(realpath -s $0))
excluded=".git README.md install.sh"
included=".bash_"
#finish sometime :)
#for file in ls dotfilesdir; do
#    ln -s $dir/$file ~/.$file
#done

# -f removes errors if file does not exist
rm -f ~/.bash_profile
rm -f ~/.vim
rm -f ~/.minttyrc
rm -f ~/.tmux.conf
rm -f ~/.inputrc
# creating ~/bin as a symlink will delete files in the repo when the user: rm -r bin
rm -d -f ~/bin

ln -s $dotfilesdir/.bash_profile ~/.bash_profile
ln -s $dotfilesdir/.vim ~/.vim
ln -s $dotfilesdir/.minttyrc ~/.minttyrc
ln -s $dotfilesdir/.tmux.conf ~/.tmux.conf
ln -s $dotfilesdir/.inputrc ~/.inputrc
# alternatively, ack already in bin
mkdir ~/bin
curl https://beyondgrep.com/ack-v3.4.0 > ~/bin/ack
chmod 0755 ~/bin/ack
# a good alternative to vssh is: vagrant ssh-config > ~/sshvmname; ssh -F ~/sshvmname vmname

# not sure if tpm is any good yet
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
