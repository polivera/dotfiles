#!/bin/sh

echo 'Installing neovim'

source ./.env.sh

sudo pacman -S neovim python-pynvim fzf ripgrep the_silver_searcher fd xclip --needed --noconfirm

echo 'Install vim-plug'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

yay -S universal-ctags-git --noconfirm

#rm -R $XDG_CONFIG_HOME/nvim
#ln -s $DOTFILES_DIR/nvim $XDG_CONFIG_HOME 

# Install COC stuff
if [[ -x /usr/bin/npm ]]; then
  mkdir -p $HOME/.config/coc/extensions > /dev/null 2>&1
  cd $HOME/.config/coc/extensions
  npm init -y
  npm install \
    coc-snippets \
    coc-python \
    coc-tsserver \
    coc-html \
    coc-css \
    coc-json \
    coc-yaml \
    coc-explorer \
    --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
fi
