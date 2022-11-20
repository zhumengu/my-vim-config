#! /bin/sh

[ -d "$HOME/.vim" ] && mv "$HOME/.vim" "$HOME/.vim-$(date +%Y%m%d).bak"
[ -f "$HOME/.vimrc" ] && mv "$HOME/.vimrc" "$HOME/.vimrc-$(date +%Y%m%d).bak"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/zhumengu/my-vim-config.git "$HOME"

vim -c 'PlugInstall'
