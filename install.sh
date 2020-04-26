#!/bin/bash

rm -rf ~/.mytmux

# backup original tmux configuration
if [ -f $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $HOME/.tmux.conf.$(date "+%Y.%m.%d-%H:%M:%S")
fi

# clone from github
git clone https://github.com/res876ttb/mytmux.git ~/.mytmux

# creaet symbolic link to $HOME
ln -s ~/.mytmux/.tmux.conf $HOME/

