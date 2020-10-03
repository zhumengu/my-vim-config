#! /bin/sh

<<<<<<< HEAD
[ -d "$HOME/.vim" ] && mv "$HOME/.vim" "$HOME/.vim.bak"
[ -f "$HOME/.vimrc" ] && mv "$HOME/.vimrc" "$HOME/.vimrc.bak"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/zhumengu/my-vim-config.git "$HOME"
=======
[ -d $HOME/.vim ] && mv $HOME/.vim $HOME/.vim.bak
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.bak

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/zhumengu/my-vim-config.git $HOME
>>>>>>> 025e3d41f6f5aa46b841c9944b54e1dd17baea74

vim -c 'PlugInstall'
