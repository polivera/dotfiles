#!/bin/sh

source ./env.sh

echo 'Installing neovim'

sudo pacman -S neovim python-pynvim fzf ripgrep the_silver_searcher fd xclip bat lua --needed --noconfirm

echo 'Install vim-plug'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo 'Install ctags'
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make
sudo make install
cd ..
rm -Rf ctags

rm -R $XDG_CONFIG_HOME/nvim
ln -s $DOTFILES_DIR/nvim $XDG_CONFIG_HOME 

