#! /bin/bash

mv $HOME/.vimrc{,.bak}
mv $HOME/.vim{,.bak}
git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
curl -sS https://raw.githubusercontent.com/zhumengu/my-vim-config/master/.vimrc -o $HOME/.vimrc 
vim -c 'PluginInstall'
