#!/bin/bash

# backup original tmux configuration
if [ -f $HOME/.tmux.conf ]; then
  echo Backup ~/.tmux.conf
  cp $HOME/.tmux.conf $HOME/.tmux.conf.$(date "+%Y.%m.%d-%H:%M:%S")
  rm ~/.tmux.conf
fi

rm -rf ~/.mytmux

# clone from github
git clone https://github.com/res876ttb/mytmux.git ~/.mytmux

# creaet symbolic link to $HOME
ln -s ~/.mytmux/.tmux.conf $HOME/

