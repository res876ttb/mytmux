#!/bin/bash

# backup original tmux configuration
if [ -f $HOME/.tmux.conf ]; then
  backup_tmux_config=/tmp/.tmux.conf.$(date "+%Y.%m.%d-%H:%M:%S")
  echo Backup $HOME/.tmux.conf to $backup_tmux_config
  cp $HOME/.tmux.conf $backup_tmux_config
  rm $HOME/.tmux.conf
fi

rm -rf $HOME/.mytmux
rm -rf $HOME/.tmux

# clone tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# clone mytmux
git clone https://github.com/res876ttb/mytmux.git $HOME/.mytmux

# creaet symbolic link to $HOME
ln -s $HOME/.mytmux/.tmux.conf $HOME/

# install plugins with tpm
$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
