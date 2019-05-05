#!/bin/bash

# backup original tmux configuration
mv $HOME/.tmux.conf .tmux.conf.$(date "+%Y.%m.%d-%H:%M:%S")
mv $HOME/.tmux.conf.func .tmux.conf.func.$(date "+%Y.%m.%d-%H:%M:%S")

# clone from github
git clone https://github.com/res876ttb/mytmux.git ~/.mytmux
cd ~/.mytmux

# creaet symbolic link to $HOME
ln -s $PWD/.tmux.conf* $HOME/


