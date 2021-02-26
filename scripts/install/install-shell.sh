#!/bin/bash
BASEDIR=$(dirname $(dirname $(dirname $0)))
CONFIGDIR=$BASEDIR/config
SCRIPTSDIR=$BASEDIR/scripts

# Declare and create config folder
[ -z ${XDG_CONFIG_HOME+x} ] && XDG_CONFIG_HOME=$HOME/.config
[ ! -d $XDG_CONFIG_HOME ] && mkdir $XDG_CONFIG_HOME

NVM_DIR=$XDG_CONFIG_HOME/nvm
PYENV_ROOT=$XDG_CONFIG_HOME/pyenv

rm -Rf \
 $HOME/.zshrc \
 $HOME/.zshenv \
 $XDG_CONFIG_HOME/git \
 $XDG_CONFIG_HOME/nvim \
 $XDG_CONFIG_HOME/shellscripts \
 > /dev/null 2>&1

ln -s $CONFIGDIR/git -T $XDG_CONFIG_HOME/git
ln -s $CONFIGDIR/nvim -T $XDG_CONFIG_HOME/nvim
ln -s $CONFIGDIR/shellscripts -T $XDG_CONFIG_HOME/shellscripts
ln -s $CONFIGDIR/.zshenv -T $HOME/.zshenv
ln -s $CONFIGDIR/.zshrc -T $HOME/.zshrc

echo "## Install nvm ##"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash . "$NVM_DIR/nvm.sh"
nvm install node

echo "## Install spaceshipt prompt"
npm install -g spaceship-prompt

echo "# #############################################"
echo "# Remember to install zsh-syntax-highlighting #"
echo "# #############################################"

echo "## Install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git $XDG_CONFIG_HOME/fzf
cd $XDG_CONFIG_HOME/fzf && ./install


echo "## Install pyenv"
git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT

# echo "## Install autojump"
# git clone git://github.com/wting/autojump.git $HOME/autojump
# cd $HOME/autojump && ./install.py
# mv $HOME/.autojump $XDG_CONFIG_HOME/autojump
# cd $HOME
# rm -Rf $HOME/autojump
