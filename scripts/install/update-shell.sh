#!/bin/bash
BASEDIR=$(dirname $(dirname $(dirname $0)))
CONFIGDIR=$BASEDIR/config
SCRIPTSDIR=$BASEDIR/scripts

[ -z ${PYENV_ROOT+x} ] && PYENV_ROOT=$XDG_CONFIG_HOME/pyenv

echo "## UPDATE nvm ##"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "## UPDATE spaceship-prompt ##"
npm -g update spaceship-prompt

echo "## UPDATE fzf"
cd $XDG_CONFIG_HOME/fzf
git pull origin master && ./install

echo "## Update pyenv"
cd $PYENV_ROOT
git pull origin master
