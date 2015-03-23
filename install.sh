#!/bin/bash

#####################################
# Set Fish as the default Shell
#####################################
if [[ -x /usr/bin/fish ]] ; then
  chsh -s /usr/bin/fish
else
  # ** Fish is not installed       **
  # ** Provide further information **
  echo -e "\033[1;31mWARNING\033[0m You don't have FISH installed."
  echo "You can still install fish afterwards."
  echo "After installation you have to run "
  echo -e "  \$> \033[4mchsh -s /usr/bin/fish\033[0m"
  echo #emtpy line
fi

FISH_CONFIG=~/.config/fish
if [ -d $FISH_CONFIG ] ; then
  # ** If fish config dir already exists **
  # ** back it up                        **
  if [ "$(ls -A $FISH_CONFIG)" ] ; then
    tar czPf $FISH_CONFIG/old_config.tar.gz $FISH_CONFIG/*
  fi
else 
  # ** create the directory              **
  mkdir $FISH_CONFIG 
fi

# ** Detect current script location ** 
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


#####################################
# Make symlinks to fisch config-files
#####################################
ln -sf $DIR/config.fish $FISH_CONFIG/config.fish
ln -sf $DIR/aliases.fish $FISH_CONFIG/aliases.fish

echo -e "\033[1;32mSUCCESS\033[0m Have fun ;)"
