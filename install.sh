#!/bin/bash

all=(".tmux.conf" ".vimrc" ".zshrc" ".fzf.zsh" ".spaceshiprc.zsh" ".config/k9s")
for i in "${all[@]}" ; do
  rm -f $HOME/$i
  [[ "$i" == *"/"* ]] && mkdir -p "$HOME/$(dirname "$i")"
  ln -s $(realpath $i) $HOME/$i
  echo "$i"
done
exit
# apt
xargs sudo apt install -y <apt-packages.txt

chsh -s /usr/bin/zsh

# Oneliners
./oneliners.sh

# brew
xargs brew install < brew.txt

echo 'Install complete, enjoy'
